slice(X, I, K, L) :- slice(X, I, 1, K, L).

slice([_|T], I, J, K, L) :- J < I, JJ is (J + 1), slice(T, I, JJ, K, L).
slice(_, _, J, K, []) :- K < J.
slice([H|T], I, J, K, L) :- JJ is (J + 1), slice(T, I, JJ, K, LL), append([H], LL, L).
