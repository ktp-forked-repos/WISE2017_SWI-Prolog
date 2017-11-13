/* exercise 3 */
cst(true).
cst(false).

/* base clauses */
and(X,Y) :-
    X = cst(true),
    Y = cst(true).
or(X,Y) :-
    (X = cst(true), Y = cst(true));
    (X = cst(true), Y = cst(false));
    (X = cst(false), Y = cst(true)).
not(X) :- X = cst(false).

is_true(X) :- X = cst(true), !.
is_true(and(X,Y)) :- and(X,Y), !.
is_true(or(X,Y)) :- or(X,Y), !.

is_true(and(X,Y)) :- is_true(X), is_true(Y).
is_true(or(X,Y))  :- \+ (\+ is_true(X), \+ is_true(Y)).
is_true(not(X)) :- \+ is_true(X).
