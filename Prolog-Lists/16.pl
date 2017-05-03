drop(L, N, Z) :- drop(L, N, 1, Z).

drop([], _, _, []).
drop([_|T], N, N, Z) :- drop(T, N, 1, Z).
drop([H|T], N, M, Z) :- K is (M + 1), drop(T, N, K, Y), append([H], Y, Z).
