range(H, H, [H]).
range(L, H, Z) :- K is (L + 1), range(K, H, Y), append([L], Y, Z).
