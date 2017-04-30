almost_last(X, [X, _]).
almost_last(X, [_|T]) :- almost_last(X, T).
