opal_filter "language" do
  fails "A class definition allows the declaration of class variables in a class method"
  fails "A class definition allows the declaration of class variables in an instance method"
  fails "A class definition allows the declaration of class variables in the body"
  fails "A class definition allows using self as the superclass if self is a class"
  fails "A class definition extending an object (sclass) can use return to cause the enclosing method to return"
  fails "A class definition extending an object (sclass) raises a TypeError when trying to extend numbers"
  fails "A class definition has no class variables"
  fails "A class definition raises TypeError if any constant qualifying the class is not a Module"
  fails "A class definition raises TypeError if constant given as class name exists and is not a Module"
  fails "A class definition raises TypeError if the constant qualifying the class is nil"
  fails "A class definition raises a TypeError if inheriting from a metaclass"
  fails "A class variable defined in a module can be accessed from classes that extend the module"
  fails "A class variable defined in a module can be accessed from modules that extend the module"
  fails "A class variable defined in a module can be accessed inside the class using the module methods"
  fails "A class variable defined in a module is defined in the extended module"
  fails "A class variable defined in a module is not defined in the extending module"
  fails "A class variable defined in a module is not defined in these classes"
  fails "A class variable defined in a module is only updated in the module a method defined in the module is used"
  fails "A class variable defined in a module is updated in the class when a Method defined in the class is used"
  fails "A constant on a metaclass appears in the metaclass constant list"
  fails "A constant on a metaclass cannot be accessed via object::CONST"
  fails "A constant on a metaclass does not appear in the object's class constant list"
  fails "A constant on a metaclass is not defined in the metaclass opener's scope"
  fails "A constant on a metaclass is not defined on the object's class"
  fails "A constant on a metaclass is not preserved when the object is duped"
  fails "A constant on a metaclass raises a NameError for anonymous_module::CONST"
  fails "A constant on a singleton class cannot be accessed via object::CONST"
  fails "A constant on a singleton class does not appear in the object's class constant list"
  fails "A constant on a singleton class is not defined in the singleton class opener's scope"
  fails "A constant on a singleton class is not defined on the object's class"
  fails "A constant on a singleton class is not preserved when the object is duped"
  fails "A constant on a singleton class raises a NameError for anonymous_module::CONST"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition '@a = lambda { |(*a, b)| [a, b] }'"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition '@a = lambda { |*, &b| b }'"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition '@a = lambda { |*, **k| k }'"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition '@a = lambda { |*| }'"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition '@a = lambda { |a, | a }'"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition \n    @a = lambda do |(a, b, *c, d), (*e, f, g), (*h)|\n      [a, b, c, d, e, f, g, h]\n    end"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition \n    @a = lambda do |a, (b, (c, *d, (e, (*f)), g), (h, (i, j)))|\n      [a, b, c, d, e, f, g, h, i, j]\n    end"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition \n    @a = lambda do |a, b=1, *c, (*d, (e)), f: 2, g:, h:, **k, &l|\n      [a, b, c, d, e, f, g, h, k, l]\n    end"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition \n    @a = lambda do |a, b=1, *c, d, e:, f: 2, g:, **k, &l|\n      [a, b, c, d, e, f, g, k, l]\n    end"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition \n    def m(*a) yield(*a) end\n    @a = lambda { |a| a }"
  fails "A lambda expression 'lambda { ... }' assigns variables from parameters for definition \n    def m(a) yield a end\n    def m2() yield end\n    @a = lambda { |a, | a }"
  fails "A lambda expression 'lambda { ... }' requires a block"
  fails "A lambda expression 'lambda { ... }' with an implicit block can be created"
  fails "A lambda literal -> () { } assigns variables from parameters for definition '@a = -> ((*a, b)) { [a, b] }'"
  fails "A lambda literal -> () { } assigns variables from parameters for definition '@a = -> (*) { }'"
  fails "A lambda literal -> () { } assigns variables from parameters for definition '@a = -> (*, &b) { b }'"
  fails "A lambda literal -> () { } assigns variables from parameters for definition '@a = -> (*, **k) { k }'"
  fails "A lambda literal -> () { } assigns variables from parameters for definition '@a = -> (a, b) { [a, b] }'"
  fails "A lambda literal -> () { } assigns variables from parameters for definition '@a = -> (a={}) { a }'"
  fails "A lambda literal -> () { } assigns variables from parameters for definition \n    @a = -> ((a, b, *c, d), (*e, f, g), (*h)) do\n      [a, b, c, d, e, f, g, h]\n    end"
  fails "A lambda literal -> () { } assigns variables from parameters for definition \n    @a = -> (a, (b, (c, *d, (e, (*f)), g), (h, (i, j)))) do\n      [a, b, c, d, e, f, g, h, i, j]\n    end"
  fails "A lambda literal -> () { } assigns variables from parameters for definition \n    @a = -> (a, b=1, *c, (*d, (e)), f: 2, g:, h:, **k, &l) do\n      [a, b, c, d, e, f, g, h, k, l]\n    end"
  fails "A lambda literal -> () { } assigns variables from parameters for definition \n    @a = -> (a: @a = -> (a: 1) { a }, b:) do\n      [a, b]\n    end"
  fails "A lambda literal -> () { } assigns variables from parameters for definition \n    @a = -> a, b=1, *c, d, e:, f: 2, g:, **k, &l do\n      [a, b, c, d, e, f, g, k, l]\n    end"
  fails "A lambda literal -> () { } assigns variables from parameters with circular optional argument reference shadows an existing local with the same name as the argument"
  fails "A lambda literal -> () { } assigns variables from parameters with circular optional argument reference shadows an existing method with the same name as the argument"
  fails "A lambda literal -> () { } returns a Proc object when used in a BasicObject method"
  fails "A method call evaluates block pass after arguments"
  fails "A number literal can be a binary literal with trailing 'i' to represent a Complex"
  fails "A number literal can be a binary literal with trailing 'r' to represent a Rational"
  fails "A number literal can be a decimal literal with trailing 'i' to represent a Complex"
  fails "A number literal can be a decimal literal with trailing 'r' to represent a Rational"
  fails "A number literal can be a hexadecimal literal with trailing 'i' to represent a Complex"
  fails "A number literal can be a hexadecimal literal with trailing 'r' to represent a Rational"
  fails "A number literal can be a octal literal with trailing 'i' to represent a Complex"
  fails "A number literal can be an integer literal with trailing 'i' to represent a Complex"
  fails "A number literal can be an integer literal with trailing 'r' to represent a Rational"
  fails "A number literal can be an octal literal with trailing 'r' to represent a Rational"
  fails "A singleton class doesn't have singleton class"
  fails "A singleton class for BasicObject has Class as it's superclass"
  fails "A singleton class for BasicObject has the proper level of superclass for Class"
  fails "A singleton class inherits from Class for classes"
  fails "A singleton class is a subclass of Class's singleton class"
  fails "A singleton class is a subclass of a superclass's singleton class"
  fails "A singleton class is a subclass of the same level of Class's singleton class"
  fails "A singleton class is a subclass of the same level of superclass's singleton class"
  fails "A singleton class raises a TypeError for Fixnum's"
  fails "A singleton class raises a TypeError for symbols"
  fails "An ensure block inside a begin block is executed even when a symbol is thrown in it's corresponding begin block"
  fails "Assigning an anonymous module to a constant sets the name of contained modules when assigning a toplevel anonymous module"
  fails "Assigning an anonymous module to a constant sets the name of the module"
  fails "Class methods of a singleton class for a class include class methods of Class"
  fails "Class methods of a singleton class for a class include instance methods of the singleton class of Class"
  fails "Class methods of a singleton class for a singleton class include class methods of the singleton class of Class"
  fails "Instance methods of a singleton class for a singleton class includes instance methods of the singleton class of Class"
  fails "Instantiating a singleton class raises a TypeError when allocate is called"
  fails "Instantiating a singleton class raises a TypeError when new is called"
  fails "Literal Regexps caches the Regexp object"
  fails "Literal Regexps disallows alphabets as non-paired delimiter with %r"
  fails "Literal Regexps disallows first part of paired delimiters to be used as non-paired delimiters"
  fails "Literal Regexps disallows spaces after %r and delimiter"
  fails "Literal Regexps matches against $_ (last input) in a conditional if no explicit matchee provided"
  fails "Literal Regexps supports (?# )"
  fails "Literal Regexps supports (?<! ) (negative lookbehind)"
  fails "Literal Regexps supports (?<= ) (positive lookbehind)"
  fails "Literal Regexps supports (?> ) (embedded subexpression)"
  fails "Literal Regexps supports \\g (named backreference)"
  fails "Literal Regexps supports character class composition"
  fails "Literal Regexps supports non-paired delimiters delimiters with %r"
  fails "Literal Regexps supports possessive quantifiers"
  fails "Literal Regexps throws SyntaxError for malformed literals"
  fails "Magic comment is optional"
  fails "Operators * / % are left-associative"
  fails "Optional variable assignments using compunded constants with ||= assignments"
  fails "Optional variable assignments using compunded constants with &&= assignments"
  fails "Optional variable assignments using compunded constants with &&= assignments will fail with non-existant constants"
  fails "Optional variable assignments using compunded constants with operator assignments"
  fails "Optional variable assignments using compunded constants with operator assignments will fail with non-existant constants"
  fails "Reopening a class adds new methods to subclasses"
  fails "The =~ operator with named captures on syntax of /regexp/ =~ string_variable sets local variables by the captured pairs"
  fails "The =~ operator with named captures on syntax of regexp_variable =~ string_variable does not set local variables"
  fails "The =~ operator with named captures on syntax of string_variable =~ /regexp/ does not set local variables"
  fails "The =~ operator with named captures on the method calling does not set local variables"
  fails "The BEGIN keyword accesses variables outside the eval scope"
  fails "The BEGIN keyword must appear in a top-level context"
  fails "The BEGIN keyword runs first in a given code unit"
  fails "The BEGIN keyword runs in a shared scope"
  fails "The BEGIN keyword runs multiple begins in FIFO order"
  fails "The __ENCODING__ pseudo-variable is US-ASCII by default"
  fails "The __ENCODING__ pseudo-variable is an instance of Encoding"
  fails "The __ENCODING__ pseudo-variable is the encoding specified by a magic comment in the file"
  fails "The __ENCODING__ pseudo-variable is the encoding specified by a magic comment inside an eval"
  fails "The __ENCODING__ pseudo-variable is the evaluated strings's one inside an eval"
  fails "The __ENCODING__ pseudo-variable raises a SyntaxError if assigned to"
  fails "The __FILE__ pseudo-variable equals the absolute path of a file loaded by a relative path" # we can't clear $LOADED_FEATURES, should be treated as readonly
  fails "The __FILE__ pseudo-variable equals the absolute path of a file loaded by an absolute path" # we can't clear $LOADED_FEATURES, should be treated as readonly
  fails "The __LINE__ pseudo-variable equals the line number of the text in a loaded file"
  fails "The alias keyword is not allowed against Fixnum or String instances"
  fails "The alias keyword on top level defines the alias on Object"
  fails "The alias keyword operates on methods defined via attr, attr_reader, and attr_accessor"
  fails "The alias keyword operates on methods with splat arguments defined in a superclass using text block for class eval"
  fails "The alias keyword operates on the object's metaclass when used in instance_eval"
  fails "The defined? keyword for a scoped constant does not call .const_missing if the constant is not defined"
  fails "The defined? keyword for a scoped constant returns nil when a constant is defined on top-level but not on the module"
  fails "The defined? keyword for a scoped constant returns nil when an undefined constant is scoped to a defined constant"
  fails "The defined? keyword for a simple constant does not call Object.const_missing if the constant is not defined"
  fails "The defined? keyword for a simple constant returns 'constant' for a constant defined in an included module"
  fails "The defined? keyword for a simple constant returns 'constant' for an included module"
  fails "The defined? keyword for a simple constant returns 'constant' when the constant is defined"
  fails "The defined? keyword for a simple constant returns nil when the constant is not defined"
  fails "The defined? keyword for a top-level scoped constant returns nil when an undefined constant is scoped to a defined constant"
  fails "The defined? keyword for an expression returns nil for an expression with != and an undefined method"
  fails "The defined? keyword for an expression returns nil for an expression with !~ and an undefined method"
  fails "The defined? keyword for an expression returns nil for an expression with == and an undefined method"
  fails "The defined? keyword for an expression with logical connectives does not propagate an exception raised by a method in a 'not' expression"
  fails "The defined? keyword for an expression with logical connectives returns nil for an expression with '!' and an undefined method"
  fails "The defined? keyword for an expression with logical connectives returns nil for an expression with '!' and an unset class variable"
  fails "The defined? keyword for an expression with logical connectives returns nil for an expression with '!' and an unset global variable"
  fails "The defined? keyword for an expression with logical connectives returns nil for an expression with '!' and an unset instance variable"
  fails "The defined? keyword for an expression with logical connectives returns nil for an expression with 'not' and an undefined method"
  fails "The defined? keyword for an expression with logical connectives returns nil for an expression with 'not' and an unset class variable"
  fails "The defined? keyword for an expression with logical connectives returns nil for an expression with 'not' and an unset global variable"
  fails "The defined? keyword for an expression with logical connectives returns nil for an expression with 'not' and an unset instance variable"
  fails "The defined? keyword for literals for a literal Array returns nil if all elements are not defined"
  fails "The defined? keyword for literals for a literal Array returns nil if one element is not defined"
  fails "The defined? keyword for loop expressions returns 'expression' for a 'retry' expression"
  fails "The defined? keyword for variables returns 'instance-variable' for an instance variable that has been assigned to nil"
  fails "The defined? keyword for variables returns nil for a global variable that has been read but not assigned to"
  fails "The defined? keyword for variables when a Regexp matches a String returns nil for non-captures"
  fails "The defined? keyword for variables when a String matches a Regexp returns nil for non-captures"
  fails "The defined? keyword for yield returns nil if no block is passed to a method not taking a block parameter"
  fails "The defined? keyword for yield returns nil if no block is passed to a method taking a block parameter"
  fails "The defined? keyword when called with a method name having a local variable as receiver returns nil if the variable does not exist"
  fails "The defined? keyword when called with a method name having a method call as a receiver returns nil if evaluating the receiver raises an exception"
  fails "The defined? keyword when called with a method name having a module as receiver returns nil if the class is not defined"
  fails "The defined? keyword when called with a method name having a module as receiver returns nil if the subclass is not defined"
  fails "The if expression with a boolean range ('flip-flop' operator) allows combining two flip-flops"
  fails "The if expression with a boolean range ('flip-flop' operator) evaluates the first conditions lazily with exclusive-end range"
  fails "The if expression with a boolean range ('flip-flop' operator) evaluates the first conditions lazily with inclusive-end range"
  fails "The if expression with a boolean range ('flip-flop' operator) evaluates the second conditions lazily with exclusive-end range"
  fails "The if expression with a boolean range ('flip-flop' operator) evaluates the second conditions lazily with inclusive-end range"
  fails "The if expression with a boolean range ('flip-flop' operator) keeps flip-flops from interfering"
  fails "The if expression with a boolean range ('flip-flop' operator) mimics a sed conditional with a many-element exclusive-end range"
  fails "The if expression with a boolean range ('flip-flop' operator) mimics a sed conditional with a zero-element exclusive-end range"
  fails "The if expression with a boolean range ('flip-flop' operator) mimics an awk conditional with a many-element inclusive-end range"
  fails "The if expression with a boolean range ('flip-flop' operator) mimics an awk conditional with a single-element inclusive-end range"
  fails "The if expression with a boolean range ('flip-flop' operator) scopes state by flip-flop"
  fails "The not keyword accepts an argument"
  fails "The or operator has a lower precedence than 'next' in 'next true or false'"
  fails "The redo statement in a method is invalid and raises a SyntaxError"
  fails "The redo statement triggers ensure block when re-executing a block"
  fails "The rescue keyword parses  'a += b rescue c' as 'a += (b rescue c)'"
  fails "The retry keyword inside a begin block's rescue block causes the begin block to be executed again"
  fails "The retry statement raises a SyntaxError when used outside of a begin statement"
  fails "The retry statement re-executes the closest block"
  fails "The super keyword calls the correct method when the method visibility is modified"
  fails "The super keyword passes along modified rest args when they were originally empty"
  fails "The super keyword passes along modified rest args when they weren't originally empty"
  fails "The super keyword sees the included version of a module a method is alias from"
  fails "The super keyword uses given block even if arguments are passed explicitly"
  fails "The super keyword without explicit arguments passes arguments and rest arguments including any modifications"
  fails "The super keyword without explicit arguments passes optional arguments that have a default value but were modified"
  fails "The super keyword without explicit arguments passes optional arguments that have a default value"
  fails "The super keyword without explicit arguments passes optional arguments that have a non-default value but were modified"
  fails "The super keyword without explicit arguments passes rest arguments including any modifications"
  fails "The unpacking splat operator (*) unpacks arguments as if they were listed statically"
  fails "The until expression restarts the current iteration without reevaluating condition with redo"
  fails "The until modifier restarts the current iteration without reevaluating condition with redo"
  fails "The until modifier with begin .. end block evaluates condition after block execution"
  fails "The until modifier with begin .. end block restart the current iteration without reevaluting condition with redo"
  fails "The until modifier with begin .. end block runs block at least once (even if the expression is true)"
  fails "The until modifier with begin .. end block skips to end of body with next"
  fails "The while expression stops running body if interrupted by break in a begin ... end attribute op-assign-or value"
  fails "The while expression stops running body if interrupted by break in a begin ... end element op-assign value"
  fails "The while expression stops running body if interrupted by break in a begin ... end element op-assign-or value"
  fails "The while expression stops running body if interrupted by break in a parenthesized attribute op-assign-or value"
  fails "The while expression stops running body if interrupted by break in a parenthesized element op-assign value"
  fails "The while modifier with begin .. end block evaluates condition after block execution"
  fails "The while modifier with begin .. end block restarts the current iteration without reevaluting condition with redo"
  fails "The while modifier with begin .. end block runs block at least once (even if the expression is false)"
  fails "The while modifier with begin .. end block skips to end of body with next"
  fails "calling methods on the metaclass calls a method defined on the metaclass of the metaclass"
  fails "self in a metaclass body (class << obj) raises a TypeError for numbers"
  fails "self in a metaclass body (class << obj) raises a TypeError for symbols"
  fails "Execution variable $: is initialized to an array of strings"
  fails "Execution variable $: is the same object as $LOAD_PATH and $-I"
  fails "Execution variable $: is read-only"
  fails "Global variable $\" is read-only"
  fails "Global variable $< is read-only"
  fails "Global variable $FILENAME is read-only"
  fails "Global variable $? is read-only"
  fails "Global variable $-a is read-only"
  fails "Global variable $-l is read-only"
  fails "Global variable $-p is read-only"
  fails "Global variable $-d is an alias of $DEBUG"
  fails "Global variable $-v is an alias of $VERBOSE"
  fails "Global variable $-w is an alias of $VERBOSE"
  fails "Global variable $0 raises a TypeError when not given an object that can be coerced to a String"
  fails "Global variable $? is thread-local"
  fails "Predefined global $! remains nil after a failed core class \"checked\" coercion against a class that defines method_missing"
  fails "Predefined global $! should be set to the value of $! before the begin after a successful rescue"
  fails "Predefined global $! should be set to the value of $! before the begin after a successful rescue within an ensure"
  fails "Predefined global $! should be set to the new exception after a throwing rescue"
  fails "Predefined global $! in bodies without ensure should be cleared when an exception is rescued"
  fails "Predefined global $! in bodies without ensure should be cleared when an exception is rescued even when a non-local return is present"
  fails "Predefined global $! in bodies without ensure should not be cleared when an exception is not rescued"
  fails "Predefined global $! in bodies without ensure should not be cleared when an exception is rescued and rethrown"
  fails "Predefined global $! in ensure-protected bodies should be cleared when an exception is rescued"
  fails "Predefined global $~ is set at the method-scoped level rather than block-scoped"
  fails "Predefined global $~ raises an error if assigned an object not nil or instanceof MatchData"
  fails "Predefined global $+ is equivalent to $~.captures.last"
  fails "Predefined global $+ captures the last non nil capture"
  fails "Predefined global $stdout raises TypeError error if assigned to nil"
  fails "Predefined global $stdout raises TypeError error if assigned to object that doesn't respond to #write"
  fails "Predefined global $/ changes $-0"
  fails "Predefined global $/ does not call #to_str to convert the object to a String"
  fails "Predefined global $/ raises a TypeError if assigned a Fixnum"
  fails "Predefined global $/ raises a TypeError if assigned a boolean"
  fails "Predefined global $-0 changes $/"
  fails "Predefined global $-0 does not call #to_str to convert the object to a String"
  fails "Predefined global $-0 raises a TypeError if assigned a Fixnum"
  fails "Predefined global $-0 raises a TypeError if assigned a boolean"
  fails "Predefined global $, raises TypeError if assigned a non-String"
  fails "Predefined global $_ is set to the last line read by e.g. StringIO#gets"
  fails "Predefined global $_ is set at the method-scoped level rather than block-scoped"
  fails "Predefined global $_ is Thread-local"
  fails "The predefined global constants includes TOPLEVEL_BINDING"
end
