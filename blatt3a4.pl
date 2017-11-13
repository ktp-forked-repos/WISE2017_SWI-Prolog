/* (a) gcd */

gcd(L,G,Acc,R) :-
    0 is mod(G,Acc),
    0 is mod(L,Acc),
    R = Acc, !.

gcd(L,G,Acc,R) :-
    AccNew is Acc - 1,
    gcd(L,G,AccNew,R).

gcd(L,G,R) :-
    gcd(L,G,L,R).
