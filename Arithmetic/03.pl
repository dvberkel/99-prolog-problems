:- ['02'].

item([X|_], X).

run_length([], []).
run_length([H|T],Z) :- run_length(T, Y), item(H, X), length(H, N), append([[N, X]], Y, Z).

factors(N, Z) :- prime_factors(N, L), run_length(L, Z).
