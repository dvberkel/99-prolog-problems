duplicate([], []).
duplicate([H|T], Z) :- duplicate(T, Y), append([H, H], Y, Z).
