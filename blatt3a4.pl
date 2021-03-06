/* (a) gcd/3 */

gcd(L,G,Acc,R) :-
    0 is mod(G,Acc),
    0 is mod(L,Acc),
    R = Acc, !.

gcd(L,G,Acc,R) :-
    AccNew is Acc - 1,
    gcd(L,G,AccNew,R).

gcd(L,G,R) :-
    gcd(L,G,L,R).

/* (b) coprime/2 */
coprime(L,G) :-
    gcd(L,G,R),
    R is 1.

/* (c) range/2 */
range_1(0,Acc,Acc).
range_1(M,Acc,L) :-
    M > 0,
    MNew is M - 1,
    range_1(MNew,[M|Acc],L).

range_1(M,L) :-
    range_1(M,[],L).
