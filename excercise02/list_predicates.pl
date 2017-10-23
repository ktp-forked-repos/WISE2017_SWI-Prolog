/* (a) predicate for testing if L is list */
is_a_list([]).
is_a_list([_|T]) :- is_a_list(T).


/* (c) predicate for testing if S is suffix of given list */
suffix(S,S).
suffix(S, [_|T]) :-  suffix(S, T).
