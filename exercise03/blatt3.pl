/* exercise 1 */
eingeschlagen(fenster).
blutverschmiert(beil).
verdächtiger.

einbruchsstelle(X) :- eingeschlagen(X).
mordwerkzeug(X) :- blutverschmiert(X).

mord :- einbruchsstelle(_), mordwerkzeug(_), verdächtiger.



/* exercise 2 */
deckel_zu.
lämpchen_leuchtet.
strom_an :- lämpchen_leuchtet.
system_heizt :- deckel_zu, strom_an.

/* exercise 3 */
