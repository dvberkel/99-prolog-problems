split(X, N, L, R) :- split(X, N, 0, L, R).

split(X, N, N, [], X).
split([H|T], N, M, L, R) :- K is (M + 1), split(T, N, K, Ls, R), append([H], Ls, L).
