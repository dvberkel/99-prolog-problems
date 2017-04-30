element_count([], 0).
element_count([_|T], N) :- element_count(T, M), N is M + 1.
