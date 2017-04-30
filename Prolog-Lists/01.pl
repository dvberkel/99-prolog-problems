find_last(X, [X]).
find_last(X, [_|T]) :- find_last(X, T).
