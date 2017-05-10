:- ['01'].

range(H, H, [H]).
range(L, H, Z) :- K is (L + 1), range(K, H, Y), append([L], Y, Z).

primes(I, J, P) :- range(I, J, L), primes_in(L, P).

primes_in([], []).
primes_in([P|T], [P|Q]) :- is_prime(P), primes_in(T, Q), !.
primes_in([_|T], Q) :- primes_in(T, Q), !.
