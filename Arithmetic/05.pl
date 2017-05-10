:- ['04'].

goldbach(N, L) :- primes(1, N, P), cartesian(P, P, Ps), sum_to(Ps, N, L).

cartesian([], _, []).
cartesian(_, [], []).
cartesian([H|T], L, Z) :- cartesian(T, L, Y), pair(H, L, X), append(X, Y, Z).

pair(_, [], []).
pair(X, [H|T], [[X,H]|Z]) :- pair(X, T, Z).

sum_to([], _, []) :- !.
sum_to([[A, B]|T], N, [[A, B]|Z]) :- A + B =:= N, sum_to(T, N, Z), !.
sum_to([_|T], N, Z) :- sum_to(T, N, Z), !.
