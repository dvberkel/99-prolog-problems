:- ['09'].

    item([X|_], X).

    encoded(X, 1, X).
    encoded(X, N, [N, X]).

    run_length([], []).
    run_length([H|T], Z) :- run_length(T, Y), item(H, X), length(H, N), encoded(X, N, U), append([U], Y, Z).

    encode(L, Z) :- pack(L, Y), run_length(Y, Z).
