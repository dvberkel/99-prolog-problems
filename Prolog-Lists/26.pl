combination(0, _, []).
combination(N, [H|T], [H|Comb]) :- M is (N - 1), combination(M, T, Comb).
combination(N, [_|T], Comb) :- N > 0, combination(N, T, Comb).
