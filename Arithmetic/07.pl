gcd(0, M, M).
gcd(M, 0, M).
gcd(M, N, Gcd) :- R is (M mod N), gcd(N, R, Gcd).
