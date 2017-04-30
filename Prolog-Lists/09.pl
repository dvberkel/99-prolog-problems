take(X, [X|T], U, V) :- take(X, T, P, V), append([X], P, U).
take(_, L, [], L).

pack([], []).
pack([X|T], Z) :- take(X, T, P, Q), pack(Q, V), append([X], P, R), append([R], V, Z).
