/* exercise 1 */
eingeschlagen(fenster).
blutverschmiert(beil).
verd�chtiger.

einbruchsstelle(X) :- eingeschlagen(X).
mordwerkzeug(X) :- blutverschmiert(X).

mord :- einbruchsstelle(_), mordwerkzeug(_), verd�chtiger.



/* exercise 2 */
deckel_zu.
l�mpchen_leuchtet.
strom_an :- l�mpchen_leuchtet.
system_heizt :- deckel_zu, strom_an.

/* exercise 3 */
