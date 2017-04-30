reverse([], []).
reverse([H|T], Z) :- append(Y, [H], Z), reverse(T, Y).
