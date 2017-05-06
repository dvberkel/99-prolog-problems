:- ['23'].

count([], 0).
count([_|T], N) :- count(T, M), N is (M + 1).

md_permu(L, P) :- count(L, N), md_select(L, N, P).
