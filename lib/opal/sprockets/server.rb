require 'rack/file'
require 'rack/static'
require 'rack/urlmap'
require 'rack/builder'
require 'rack/deflater'
require 'rack/directory'
require 'rack/show_exceptions'
require 'opal/source_map'
require 'sprockets'
require 'sourcemap'
require 'erb'
require 'opal/sprockets/source_map_server'
require 'opal/sprockets/source_map_header_patch'

module Opal
  class Server
    SOURCE_MAPS_PREFIX_PATH = '/__OPAL_SOURCE_MAPS__'

    attr_accessor :debug, :use_index, :index_path, :main, :public_root,
                  :public_urls, :sprockets, :prefix

    def initialize debug_or_options = {}
      unless Hash === debug_or_options
        warn "passing a boolean to control debug is deprecated.\n"+
             "Please pass an Hash instead: Server.new(debug: true)"
        options = {:debug => debug_or_options}
      else
        options = debug_or_options
      end

      @use_index   = true
      @public_root = nil
      @public_urls = ['/']
      @sprockets   = options.fetch(:sprockets, ::Sprockets::Environment.new)
      @debug       = options.fetch(:debug, true)
      @prefix      = options.fetch(:prefix, '/assets')

      Opal.paths.each { |p| @sprockets.append_path(p) }

      yield self if block_given?
      create_app
    end

    def public_dir=(dir)
      @public_root = dir
      @public_urls = ["/"]
    end

    def source_map=(enabled)
      Opal::Processor.source_map_enabled = enabled
    end

    def source_map_enabled
      Opal::Processor.source_map_enabled
    end

    def append_path path
      @sprockets.append_path path
    end

    def use_gem gem_name
      @sprockets.use_gem gem_name
    end

    def create_app
      server, sprockets, prefix = self, @sprockets, self.prefix
      sprockets.logger.level ||= Logger::DEBUG
      source_map_enabled = self.source_map_enabled
      if source_map_enabled
        maps_prefix = SOURCE_MAPS_PREFIX_PATH
        maps_app = SourceMapServer.new(sprockets, maps_prefix)
        ::Opal::Sprockets::SourceMapHeaderPatch.inject!(maps_prefix)
      end

      @app = Rack::Builder.app do
        not_found = lambda { |env| [404, {}, []] }
        use Rack::Deflater
        use Rack::ShowExceptions
        use Index, server if server.use_index
        if source_map_enabled
          map(maps_prefix) do
            require 'rack/conditional_get'
            require 'rack/etag'
            use Rack::ConditionalGet
            use Rack::ETag
            run maps_app
          end
        end
        map(prefix)      { run sprockets }
        run Rack::Static.new(not_found, root: server.public_root, urls: server.public_urls)
      end
    end

    def call(env)
      @app.call env
    end

    class Index

      def initialize(app, server)
        @app = app
        @server = server
        @index_path = server.index_path
      end

      def call(env)
        if %w[/ /index.html].include? env['PATH_INFO']
          [200, { 'Content-Type' => 'text/html' }, [html]]
        else
          @app.call env
        end
      end

      # Returns the html content for the root path. Supports ERB
      def html
        if @index_path
          raise "index does not exist: #{@index_path}" unless File.exist?(@index_path)
          Tilt.new(@index_path).render(self)
        else
          source
        end
      end

      def javascript_include_tag name
        sprockets = @server.sprockets
        prefix = @server.prefix
        asset = sprockets[name]
        raise "Cannot find asset: #{name}" if asset.nil?
        scripts = []

        if @server.debug
          asset.to_a.map do |dependency|
            scripts << %{<script src="#{prefix}/#{dependency.logical_path}?body=1"></script>}
          end
        else
          scripts << %{<script src="#{prefix}/#{name}.js"></script>}
        end

        scripts << %{<script>#{Opal::Processor.load_asset_code(sprockets, name)}</script>}

        scripts.join "\n"
      end

      def source
        <<-HTML
          <!DOCTYPE html>
          <html>
          <head>
            <title>Opal Server</title>
          </head>
          <body>
            #{javascript_include_tag @server.main}
          </body>
          </html>
        HTML
      end
    end
  end
end
