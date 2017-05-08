prime_factors(N, L) :- prime_factors(N, 2, L).

prime_factors(1, _, []).
prime_factors(N, D, [D|Ds]) :- N mod D =:= 0, Q is (N div D), prime_factors(Q, D, Ds), !.
prime_factors(N, D, Es) :- E is (D + 1), prime_factors(N, E, Es), !.
