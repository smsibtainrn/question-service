INSERT INTO question
(language, difficulty, question, option_a, option_b, option_c, option_d, correct_answer)
VALUES

-- JAVA EASY (10)
('Java','EASY','Which keyword is used to create a class in Java?','class','struct','define','object','class'),
('Java','EASY','Which method is the entry point of a Java application?','start()','main()','run()','init()','main()'),
('Java','EASY','Which data type is used to store whole numbers in Java?','String','boolean','int','double','int'),
('Java','EASY','Which keyword is used to inherit a class in Java?','implements','extends','inherits','super','extends'),
('Java','EASY','Which collection stores key-value pairs?','ArrayList','HashSet','HashMap','LinkedList','HashMap'),
('Java','EASY','Which keyword is used to create an object?','object','new','create','instance','new'),
('Java','EASY','Which of these is not a primitive type in Java?','int','boolean','String','double','String'),
('Java','EASY','Which operator checks equality for primitive values?','=','==','===','equals','=='),
('Java','EASY','Which keyword prevents a variable from being reassigned?','const','static','final','fixed','final'),
('Java','EASY','Which exception occurs when accessing an object through a null reference?','IOException','NullPointerException','ArithmeticException','ClassNotFoundException','NullPointerException'),

-- JAVA MEDIUM (10)
('Java','MEDIUM','Which interface defines natural ordering for a class?','Comparator','Comparable','Iterable','Cloneable','Comparable'),
('Java','MEDIUM','What is the average time complexity of HashMap lookup?','O(1)','O(log n)','O(n)','O(n log n)','O(1)'),
('Java','MEDIUM','Which keyword is used to handle an exception?','catch','handle','exception','error','catch'),
('Java','MEDIUM','What does static mean for a Java class member?','It belongs to the class','It cannot be changed','It is private','It is immutable','It belongs to the class'),
('Java','MEDIUM','Which collection does not allow duplicate elements?','List','Set','Queue','Map','Set'),
('Java','MEDIUM','What is method overloading?','Same method name with different parameters','Replacing a parent method','Calling a private method','Creating multiple classes','Same method name with different parameters'),
('Java','MEDIUM','Which keyword refers to the current object?','self','current','this','object','this'),
('Java','MEDIUM','Which interface is commonly used for custom sorting logic?','Comparable','Comparator','Sortable','Ordering','Comparator'),
('Java','MEDIUM','What does JVM stand for?','Java Variable Machine','Java Virtual Machine','Java Verified Machine','Java Visual Machine','Java Virtual Machine'),
('Java','MEDIUM','Which keyword is used when a class implements an interface?','extends','inherits','implements','interface','implements'),

-- JAVA HARD (10)
('Java','HARD','Which concurrency utility allows threads to wait until a set of operations completes?','CountDownLatch','AtomicInteger','ThreadLocal','FutureTask','CountDownLatch'),
('Java','HARD','What is the main purpose of volatile?','Guarantee atomicity','Ensure visibility across threads','Prevent garbage collection','Make objects immutable','Ensure visibility across threads'),
('Java','HARD','Which lock allows the same thread to acquire the lock repeatedly?','Semaphore','ReentrantLock','ReadWriteLock','StampedLock','ReentrantLock'),
('Java','HARD','What problem occurs when threads wait indefinitely for each other to release locks?','Starvation','Deadlock','Overflow','Race-free execution','Deadlock'),
('Java','HARD','Which class provides an atomic integer operation?','AtomicInteger','IntegerLock','SafeInteger','ConcurrentInteger','AtomicInteger'),
('Java','HARD','Which collection is designed for concurrent access by multiple threads?','ArrayList','HashMap','ConcurrentHashMap','TreeMap','ConcurrentHashMap'),
('Java','HARD','What does the happens-before relationship primarily provide?','Memory visibility ordering','Automatic garbage collection','Faster compilation','Object serialization','Memory visibility ordering'),
('Java','HARD','Which ExecutorService method submits a Callable and returns a Future?','execute()','submit()','start()','run()','submit()'),
('Java','HARD','What is the main purpose of a Semaphore?','Control access to a limited number of permits','Sort threads','Create objects','Handle exceptions','Control access to a limited number of permits'),
('Java','HARD','Which feature allows a method to be selected based on the runtime object type?','Runtime polymorphism','Method hiding','Static binding','Compilation','Runtime polymorphism'),

-- PYTHON EASY (10)
('Python','EASY','Which keyword is used to define a function in Python?','function','def','fun','define','def'),
('Python','EASY','Which symbol is used to start a comment in Python?','//','#','<!--','--','#'),
('Python','EASY','Which data type stores an ordered collection that can be changed?','tuple','list','set','frozenset','list'),
('Python','EASY','Which function is used to display output?','echo()','print()','display()','write()','print()'),
('Python','EASY','Which keyword is used for a conditional statement?','if','when','condition','check','if'),
('Python','EASY','Which data type stores key-value pairs?','list','tuple','dictionary','set','dictionary'),
('Python','EASY','How do you create a single-line string?','Using quotes','Using brackets','Using braces','Using parentheses only','Using quotes'),
('Python','EASY','Which function returns the number of items in a collection?','count()','size()','len()','length()','len()'),
('Python','EASY','Which keyword is used to create a loop over items?','iterate','for','loop','repeat','for'),
('Python','EASY','What is the file extension commonly used for Python files?','.java','.py','.python','.pt','.py'),

-- PYTHON MEDIUM (10)
('Python','MEDIUM','What is a tuple in Python?','A mutable collection','An immutable ordered collection','A key-value collection','A function','An immutable ordered collection'),
('Python','MEDIUM','Which keyword is used to handle exceptions?','catch','except','error','handle','except'),
('Python','MEDIUM','What does a list comprehension provide?','A concise way to create lists','A way to create classes','A database query','A threading mechanism','A concise way to create lists'),
('Python','MEDIUM','Which data structure automatically removes duplicate values?','list','tuple','set','dictionary','set'),
('Python','MEDIUM','What does == compare in Python?','Object identity only','Values for equality','Memory addresses only','Types only','Values for equality'),
('Python','MEDIUM','Which operator is used for exponentiation?','^','**','//','%%','**'),
('Python','MEDIUM','What does // do in Python?','Normal division','Floor division','Exponentiation','Modulo only','Floor division'),
('Python','MEDIUM','Which keyword creates a generator function?','yield','generate','gen','return','yield'),
('Python','MEDIUM','What is the purpose of self in an instance method?','References the current instance','Creates a class','Creates a thread','Imports a module','References the current instance'),
('Python','MEDIUM','Which module provides regular expression support?','regex','re','regexp','pattern','re'),

-- PYTHON HARD (10)
('Python','HARD','What is the Global Interpreter Lock commonly known as?','GIL','GIC','GVM','GILock','GIL'),
('Python','HARD','Which data structure is generally used to implement a stack efficiently?','list','float','string','range','list'),
('Python','HARD','What is a decorator used for?','Modifying or extending function/class behavior','Creating databases','Compiling Python','Managing memory manually','Modifying or extending function/class behavior'),
('Python','HARD','What is the purpose of __init__?','Initialize an instance','Destroy an instance','Import a module','Start a thread','Initialize an instance'),
('Python','HARD','What does deepcopy provide?','A recursively independent copy','A reference alias','A shallow reference only','A serialized database','A recursively independent copy'),
('Python','HARD','Which module provides a thread-safe queue implementation?','queue','threadqueue','collections only','asyncqueue','queue'),
('Python','HARD','What does asyncio primarily support?','Asynchronous programming','Database schema creation','Static typing only','Image processing','Asynchronous programming'),
('Python','HARD','What is a context manager commonly used with?','with','switch','using','manage','with'),
('Python','HARD','What is the time complexity of average dictionary key lookup?','O(1)','O(log n)','O(n)','O(n log n)','O(1)'),
('Python','HARD','What is a Python generator primarily useful for?','Producing values lazily','Creating database tables','Compiling code','Encrypting strings','Producing values lazily'),

-- JAVASCRIPT EASY (10)
('JavaScript','EASY','Which keyword declares a block-scoped variable that can be reassigned?','var','let','const','define','let'),
('JavaScript','EASY','Which keyword declares a block-scoped constant?','var','let','const','static','const'),
('JavaScript','EASY','Which method prints output to the browser console?','print()','console.log()','echo()','writeConsole()','console.log()'),
('JavaScript','EASY','Which operator checks strict equality?','==','===','=','equals','==='),
('JavaScript','EASY','Which keyword is used to define a function?','function','def','fun','method','function'),
('JavaScript','EASY','Which value represents absence of an assigned value?','undefined','empty','voided','nothing','undefined'),
('JavaScript','EASY','Which data structure stores an ordered collection?','Array','Object only','Map only','Set only','Array'),
('JavaScript','EASY','Which method adds an element to the end of an array?','push()','pop()','shift()','add()','push()'),
('JavaScript','EASY','Which method removes the last element from an array?','push()','pop()','remove()','deleteLast()','pop()'),
('JavaScript','EASY','Which keyword is used to return a value from a function?','send','return','yieldValue','output','return'),

-- JAVASCRIPT MEDIUM (10)
('JavaScript','MEDIUM','What is a Promise used for?','Representing eventual completion of an asynchronous operation','Creating classes only','Styling HTML','Managing CSS','Representing eventual completion of an asynchronous operation'),
('JavaScript','MEDIUM','Which method creates a new array by transforming each element?','filter()','map()','reduce()','forEach()','map()'),
('JavaScript','MEDIUM','Which method returns elements that satisfy a condition?','map()','filter()','reduce()','findAll()','filter()'),
('JavaScript','MEDIUM','Which method reduces an array to a single value?','map()','filter()','reduce()','joinOnly()','reduce()'),
('JavaScript','MEDIUM','What does typeof null return?','null','object','undefined','None','object'),
('JavaScript','MEDIUM','What does JSON.parse() do?','Converts JSON text into a JavaScript value','Converts objects into JSON text','Validates CSS','Creates an HTTP server','Converts JSON text into a JavaScript value'),
('JavaScript','MEDIUM','What does JSON.stringify() do?','Converts a JavaScript value into JSON text','Parses JSON text','Creates an array','Clones functions','Converts a JavaScript value into JSON text'),
('JavaScript','MEDIUM','Which keyword can pause an async function until a Promise settles?','wait','await','pause','hold','await'),
('JavaScript','MEDIUM','Which keyword declares an asynchronous function?','async','await','promise','defer','async'),
('JavaScript','MEDIUM','What is a closure?','A function retaining access to its lexical scope','A closed browser window','A class constructor','A loop','A function retaining access to its lexical scope'),

-- JAVASCRIPT HARD (10)
('JavaScript','HARD','What is the event loop responsible for?','Coordinating asynchronous callbacks and the call stack','Compiling CSS','Creating HTML elements only','Managing database schemas','Coordinating asynchronous callbacks and the call stack'),
('JavaScript','HARD','Which queue has priority over the task queue after the current stack completes?','Microtask queue','Render queue only','Database queue','File queue','Microtask queue'),
('JavaScript','HARD','What does Promise.all() do?','Waits for all promises to fulfill or rejects when one rejects','Runs only one promise','Ignores rejected promises','Converts promises to callbacks','Waits for all promises to fulfill or rejects when one rejects'),
('JavaScript','HARD','What is prototypal inheritance?','Objects inheriting properties and methods through prototypes','Classes inheriting only through interfaces','Database inheritance','Function overloading','Objects inheriting properties and methods through prototypes'),
('JavaScript','HARD','What is the purpose of bind()?','Creates a function with a specified this value','Immediately executes a function','Deletes a function','Converts a function to JSON','Creates a function with a specified this value'),
('JavaScript','HARD','What is event delegation?','Handling events through a common ancestor element','Creating multiple event loops','Delegating events to another browser','Blocking all events','Handling events through a common ancestor element'),
('JavaScript','HARD','What is a WeakMap useful for?','Associating data with objects without preventing garbage collection of keys','Sorting objects','Creating immutable arrays','Storing primitive keys only','Associating data with objects without preventing garbage collection of keys'),
('JavaScript','HARD','What does Object.freeze() do?','Prevents modifications to an object at the top level','Deletes an object','Encrypts an object','Creates a deep clone','Prevents modifications to an object at the top level'),
('JavaScript','HARD','What is currying?','Transforming a function with multiple arguments into a sequence of single-argument functions','Calling a function recursively','Converting arrays to objects','Creating promises','Transforming a function with multiple arguments into a sequence of single-argument functions'),
('JavaScript','HARD','What is the main purpose of a JavaScript module?','Encapsulating and exporting reusable code','Creating database tables','Rendering CSS only','Replacing the JavaScript engine','Encapsulating and exporting reusable code');o
