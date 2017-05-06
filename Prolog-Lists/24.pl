:- ['22'].
:- ['23'].

lotto(N, M, L) :- range(1, M, R), md_select(R, N, L).
