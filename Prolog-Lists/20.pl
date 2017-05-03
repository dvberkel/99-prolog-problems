remove_at(H, [H|T], 1, T).
remove_at(Y, [X|Xs], N, R) :- M is (N-1), remove_at(Y, Xs, M, Q), append([X], Q, R).
