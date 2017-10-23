/* testing if L is list */
is_a_list([]).
is_a_list([_,T]) :- is_a_list(T).
