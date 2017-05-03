rotate(X, N, L) :- N < 0, length(X, S), M is (N + S), rotate(X, M, L).
rotate(X, N, L) :- length(X, S), S < N, M is (N - S), rotate(X, M, L).
rotate(X, N, L) :- length(X, S), S = N, rotate(X, 0, L).
rotate(X, 0, X).
rotate([H|T], I, L) :- J is (I - 1), rotate(T, J, K), append(K, [H], L).
