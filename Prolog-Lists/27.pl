el(X,[X|L],L).
el(X,[_|L],R) :- el(X,L,R).

selectN(0,_,[]) :- !.
    selectN(N,L,[X|S]) :- N > 0,
    el(X,L,R),
    N1 is N-1,
    selectN(N1,R,S).

group3(G,G1,G2,G3) :-
   selectN(2,G,G1),
   subtract(G,G1,R1),
   selectN(3,R1,G2),
   subtract(R1,G2,R2),
   selectN(4,R2,G3),
   subtract(R2,G3,[]).

group([],[],[]).
group(G,[N1|Ns],[G1|Gs]) :- 
   selectN(N1,G,G1),
   subtract(G,G1,R),
   group(R,Ns,Gs).
