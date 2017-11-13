cst(true).
cst(false) :- fail.

and(A,B) :- is_true(A), is_true(B).
or(A,B) :- is_true(A); is_true(B).
not(A) :- is_false(A).

is_false(cst(false)).
is_false(and(A,B)) :- not(A); not(B).
is_false(or(A,B)) :- not(A), not(B).

is_true(cst(true)).
is_true(and(A,B)) :- and(A,B).
is_true(or(A,B)) :- or(A,B).
is_true(not(A)) :- not(A).

