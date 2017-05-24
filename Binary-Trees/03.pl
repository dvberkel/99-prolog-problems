mirror(nil, nil) :- !.
mirror(t(_, L, R), t(_, U, V)) :- mirror(L, V), mirror(R, U).

symmetric(nil) :- !.
symmetric(t(_, L, R)) :- mirror(L, R).
