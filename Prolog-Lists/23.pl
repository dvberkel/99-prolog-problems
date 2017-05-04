:- use_module(library(random)).
:- ['20'].

count([], 0).
count([_|T], N) :- count(T, M), N is (M + 1).

md_select(_, 0, []).
md_select(L, N, R) :-
    count(L, C),
    random_between(1, C, I),
    remove_at(X, L, I, Xs),
    M is (N - 1),
    md_select(Xs, M, Q),
    append([X], Q, R).
