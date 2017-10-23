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


/* (b) check if P is prefix of given list */
prefix([H|[]],[H|_]).
prefix([P|T1],[L|T2]) :- [P|T2] = [L|T2],
    prefix(T1,T2).
