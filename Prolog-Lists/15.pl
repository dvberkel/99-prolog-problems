times(_, 0, []).
times(X, N, Z) :- M is (N - 1), times(X, M, Y), append([X], Y, Z).

multiply([], _, []).
multiply([H|T], N, Z) :- multiply(T, N, U), times(H, N, V), append(V, U, Z).
