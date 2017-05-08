is_prime(N) :- divisors(N, D), length(D, 2).

divisors(N, D) :- divisors(N, 1, D).

divisors(N, M, []) :- M > N.
divisors(N, D, [D|Es]) :- divides(N, D), E is (D + 1), divisors(N, E, Es).
divisors(N, D, Ds) :- E is (D + 1), divisors(N, E, Ds).

divides(N, Q) :- N mod Q =:= 0.
