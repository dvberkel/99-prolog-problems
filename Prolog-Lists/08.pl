drop(_, [], []).
drop(X, [X|T], Z) :- drop(X, T, Z).
drop(_, L, L).

compress([], []).
compress([X], [X]).
compress([X|T], Z) :- drop(X,T,U), compress(U,V), append([X], V, Z).
