insert_at(X, L, 1, [X|L]).
insert_at(X, [Y|Ys], N, R) :- M is (N - 1), insert_at(X, Ys, M, Q), append([Y], Q, R).
