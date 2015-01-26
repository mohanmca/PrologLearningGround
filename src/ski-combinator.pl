%% -*-mode: prolog-*-
 
%% Example of the reversal operator:
%% ?- R = [[s, [k, [s, i]]], k],
%% eval([[R, a], b], Result).
%%
%% R = [[s,[k,[s,i]]],k]
%% Result = [b,a] ?
 
%% eval delegates to eval1 to perform the transformations of the calculus,
%% and recurses until the term can not be transformed any further.
eval(X, Result) :-
eval1(X, Y),
\+(X == Y),
eval(Y, Result).
eval(X, X).
 
%% eval1 performs the actual transformations
eval1([i, X], X).
eval1([[k, X], _], X).
eval1([[[s, X], Y], Z], [[X, Z], [Y, Z]]).
eval1([X, Y], [X1, Y1]) :-
eval1(X, X1),
eval1(Y, Y1).
eval1(X, X). 