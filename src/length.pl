length([],0).
length([X|T],N):- length(T,N1), N is N1+1