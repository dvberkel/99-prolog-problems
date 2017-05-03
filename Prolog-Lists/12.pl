repeat([0, _], []).
repeat([N, X], Z) :- M is (N - 1), repeat([M, X], T), append([X], T, Z).
repeat(X, [X]).

decode([], []).
decode([H|T], Z) :- repeat(H, X), decode(T, Y), append(X, Y, Z).
