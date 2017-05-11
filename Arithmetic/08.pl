:- ['07'].

co_prime(P, Q) :- gcd(P, Q, Gcd), Gcd =:= 1.
