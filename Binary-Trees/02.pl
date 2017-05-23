cbal_tree(0, nil) :- !.

cbal_tree(N, t(x, L, R)) :- M is (N - 1), cbal_tree(M, L), cbal_tree(M, R).
cbal_tree(N, t(x, L, R)) :- N >= 2, M is (N - 1), K is (N - 2), cbal_tree(K, L), cbal_tree(M, R).
cbal_tree(N, t(x, L, R)) :- N >= 2, M is (N - 1), K is (N - 2), cbal_tree(M, L), cbal_tree(K, R).
