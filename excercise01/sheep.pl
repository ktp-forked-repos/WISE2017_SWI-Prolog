/**
 * create sheep database
 */

/* gender */

male(hannes).
male(gunter).
male(willi).
male(theo).
female(maria).
female(trude).
female(klara).


/* relationships */

parent(maria, hannes).
parent(gunter, maria).
parent(willi, gunter).
parent(klara, maria).


/**
 * define predicates
 */

/* write a predicate sheep/1 which is true for all sheeps in this database */
sheep(X) :- male(X); female(X).
sheep(X) :- sheep(sheep(X)).
/**
 * write two predicates father/2 and mother/2 with their
 * first argument for the parent and the second for the child
 */
father(F, C) :-  male(F), parent(F, C).
mother(M, C) :- female(M), parent(M, C).

/**
 * write a predicate ancestor/2 with its first argument for the
 * ancestor and its second for its descendant
 */
ancestor(A, D) :- parent(A, D).
ancestor(A, D) :- parent(X, D),
    ancestor(A, X).
