is_tree(nil).
is_tree(t(_, L, R)) :- is_tree(L), is_tree(R).
