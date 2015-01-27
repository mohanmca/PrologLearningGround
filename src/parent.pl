parent(abraham,bob).
parent(bob,charles).
parent(charles,david).
parent(david,ervin).
parent(ervin,francis).
parent(someone,someoneelse).

grandparent(X,Z) :- parent(X,Y), parent(Y,Z).
predecessor(X,Z) :- parent(X,Z).
predecessor(X,Z) :- parent(X,Y), predecessor(Y,Z). 