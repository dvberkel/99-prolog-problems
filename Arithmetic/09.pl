:- ['08'].

totient_phi(N, C) :- totient_phi(N, 1, N, C).

totient_phi(_, J, I, 0) :- I < J, !.
totient_phi(N, I, J, D) :- co_prime(N, J), K is (J - 1), totient_phi(N, I, K, C), D is (C + 1), !.
totient_phi(N, I, J, C) :- K is (J - 1), totient_phi(N, I, K, C).
