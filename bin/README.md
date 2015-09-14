dmlpp.py is in the bin directory and works similar to the c preprocessor

some examples:
 Say parent.dml contains the following code

 shell>cat code.dml
 #include "common/header1.dml"
 #include "math/functions.dml"

 #this is comments
 sq = square(4.5)

 #include "common/tail1.dml"

 and say the other files contains

 shell>cat common/header1.dml
 print("Hello World. Welcome to dml scripts")

 shell>cat math/functions.dml
 square = function (double a) return (double b) {b = a*a}

 shell>cat common/tail1.dml"
 print("Done!")

 One can use
 dmlpp.py -I <include_path> -o code_with_dependencies.dml code.dml ;

 and it will generate the output, which you can run using the systemml commands


