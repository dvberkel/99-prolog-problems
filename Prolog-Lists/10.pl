:- ['09'].

item([X|_], X).

run_length([], []).
run_length([H|T],Z) :- run_length(T, Y), item(H, X), length(H, N), append([[N, X]], Y, Z).

encode(L, Z) :- pack(L, Y), run_length(Y, Z).
