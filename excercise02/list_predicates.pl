/*
 * Excercise 1
 */

/* (a) check if L is list */
is_a_list([]).
is_a_list([_|T]) :- is_a_list(T).


/* (c) check if S is suffix of given list */
suffix(S,S).
suffix(S, [_|T]) :-  suffix(S, T).


/* (e) check if E is element of L */
element_of(E, [E|_]).
element_of(E, [_|T]) :- element_of(E, T).


/* (f) removes E from L and returns the new list R */
del_element(E,[E|T],T).
del_element(E,[S|T],[S|R]) :- del_element(E,T,R).


/* (d) check if P is prefix of given list */
prefix([H|[]],[H|_]).
prefix([H|T1],[H|T2]) :- prefix(T1,T2).


/* (b) check if I is infix of given list */
infix(I,L) :- prefix(I,L).
infix(I,[_|T]) :- infix(I,T).

/*
 * Excercise 2
 *
 */

add(E,[],[E]).
add(E,[H|T],[H|Q]) :- add(E,T,Q).

/* returns a flattend version of a given list */

flatten([],[]).
flatten([H|T1], [H|T2]) :- \+ is_a_list(H), flatten(T1,T2).
flatten([H|T],L) :- flatten(H,L1), flatten(T,L2), append(L1,L2,L).

