encode_direct([], []).
encode_direct([X|Xs], [Z|Zs]) :- count(X, Xs, Ys, 1, Z), encode_direct(Ys, Zs).

count(X, [], [], 1, X).
count(X, [], [], N, [N, X]) :- N > 1.
count(X, [Y|Ys], [Y|Ys], 1, X) :- X \= Y.
count(X, [Y|Ys], [Y|Ys], N, [N, X]) :- N > 1, X \= Y.
count(X, [X|Xs], Ys, K, T) :- K1 is K + 1, count(X, Xs, Ys, K1, T).
