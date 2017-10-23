/* (a) predicate for testing if L is list */
is_a_list([]).
is_a_list([_|T]) :- is_a_list(T).


/* (c) predicate for testing if S is suffix of given list */
suffix(S,S).
suffix(S, [_|T]) :-  suffix(S, T).

/* (e) checks wether E is element of L or not */
element_of(E, [E|_]).
element_of(E, [_|T]) :- element_of(E, T).

/* (f) removes E from L and returns the new list R */
del_element(E,[E|T],T).
del_element(E,[S|T],[S|R]) :- del_element(E,T,R).
