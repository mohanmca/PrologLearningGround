#	Following notes about how to use swipl-win prolog interpreter on winows

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

# Print current directory
working_directory(CWD,CWD).

# Change current directory
working_directory(CWD, 'C:/Users/mohan/git/PrologLearningGround/src/').

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

How to run appteizer program?
?- ['appetizer.pl'].
Order(L).
;;; (type ; when required)


------------------------
Running parent program.
------------------------

?- consult('parent.pl').
% parent.pl compiled 0.00 sec, 10 clauses
true.

?- parent(abraham,P).
P = bob.

?- grandparent(abraham,P).
P = charles.

?- predecessor(abraham,P).
P = bob ;
P = charles ;
P = david ;
P = ervin ;
P = francis ;
false.
 
--------------------------
permutation(L,[1,2,3]).
L = [1, 2, 3] ;
L = [1, 3, 2] ;
L = [2, 1, 3] ;
L = [3, 1, 2] ;
L = [2, 3, 1] ;
L = [3, 2, 1] ;

-------------------------
 
 Solving puzzle using Prolog
 1) Adam does not live on the top floor.
 2) Bill does not live on the bottom floor.
 3) Cora does not live on either the top or the bottom floor.
 4) Dale lives on a higher floor than does Bill.
 5) Erin does not live on a floor adjacent to Cora's.
 6) Cora does not live on a floor adjacent to Bill's.
 
 Solution.
(begin with rought rules, and facts)
[Top,Level4,Level3,Level2,Bottom]
[adam,bill,cora,dale,erin]
adam \== Top
bill \== Bottom
cora \== Top, cora \== Bottom
higher(dale,bill,L)
not_adjacent(erin,cora,L)
not_adjacent(cora,bill,L)


higher(X,Y,[X|T]):-	member(Y,T).
higher(X,Y,[_|T]):-	higher(X,Y,T).

not_adjacent(X,Y,[X,Z|T]):-	
	Z \== Y, 
	member(Y,T).

not_adjacent(X,Y,[Y,Z|T]):-	
	Z \== X, 
	member(X,T).

not_adjacent(X,Y,[_,T]):-	
	not_adjacent(X,Y,T).

permutation(L,[adam,bill,cora,dale,erin]).

puzzle(L):-
		permutation(L,[adam,bill,cora,dale,erin]),
		L=[Top,Level4,Level3,Level2,Bottom],
		adam \== Top,
		bill \== Bottom,
		cora \== Top, 
		cora \== Bottom,
		higher(dale,bill,L),
		not_adjacent(erin,cora,L),
		not_adjacent(cora,bill,L).
		
		
		
test for
higher(adam, bill, [adam, bill, cora, dale, erin]).  
higher(adam, cora, [adam, bill, cora, dale, erin]).  
higher(dale, bill, [adam, bill, cora, dale, erin]).
 		