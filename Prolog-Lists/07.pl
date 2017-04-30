flatten([], []).
flatten([H|T], Z) :- flatten(H, G), flatten(T, U), append(G, U, Z).
flatten(X, [X]).
