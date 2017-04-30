element_at(X, [X|_], 1).
element_at(X, [_|T], N) :- element_at(X, T, M), N is (M + 1).
