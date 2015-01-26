Reference : 
http://www.inf.ed.ac.uk/teaching/courses/ar/ARPROLOG/stepbystep.pdf


1) Download and install swi-prolog
2) Execute swipl-win.exe (Windows interpretter)

set PATH=%PATH%;"C:\Program Files (x86)\swipl\bin\"
swipl-win.exe 
swipl (Command prompt prolog interpretter)
^+D == twice to exit


//Pay attention to .DOT. at the end of the line.
//Language syntax
predicate('arguments').
nl -- built-in-procedure

---
Try following commands in interpretter

write('hello).
write('hello'), nl, write('master').

---
Loading file

Crate a file HelloWorld.pl
Using dos go to the directory
Load using following commands

['filename.pl'].
['HelloWorld.pl'].

Invoke function by invoking procedure (or Rules)
saluate.


---
New procedure
head :- built-in-procedure | custom-procedure 
---

How to query knowledge base?
Load book-knowledge.pl

1) author(Book, jason_fried). (Here capital letter is the variable, that is question/query  to Prolog interpretter)
							   Find all the Book, that was authored by jason_fried									
2) plays(Musician, guitar).
 Query all the musician, who could play guitar


How to get more answers?

Prolog waits with a cursor at the end of the answer. If the user types a semicolon ';' , Prolog will look for a next answer, and so on. 
If the user just hits Enter, then Prolog stops looking for answers.

 
------------------------
https://sites.google.com/site/prologsite/prolog-problems/1

How to run appteizer program?
?- ['appetizer.pl'].
Order(L).
;;; (type ; when required)


------------------------

