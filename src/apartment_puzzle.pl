member(X,[X|T]).
member(X,[_|T]):-
	member(X,T).

higher(X,Y,[X|T]):-	member(Y,T).
higher(X,Y,[_|T]):-	higher(X,Y,T).

not_adjacent(X,Y,[X,Z|T]):-
	Z \== Y,
	member(Y,T).

not_adjacent(X,Y,[Y,Z|T]):-
	Z \== X,
	member(X,T).

not_adjacent(X,Y,[_|T]):-
	not_adjacent(X,Y,T).
	
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