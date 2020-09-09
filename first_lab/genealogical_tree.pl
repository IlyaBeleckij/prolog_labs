male(albert).
male(bill).
male(bob).
male(carl).
male(charlie).
male(dan).
male(ilya).
male(borisik).
male(kesha).
male(christofet).
male(edward).
male(egor).
male(vladimir).

female(alice).
female(fevronya).
female(betsy).
female(diana).
female(natasha).
female(nadya).
female(ella).
female(dasha).
female(stesha).
female(stepanida).
female(jennifer).

parent(ilya, stesha).
parent(ilya, borisik).
parent(dasha, stesha).
parent(dasha, borisik).

parent(natasha, stepanida).
parent(borisik, stepanida).

parent(egor, kesha).
parent(egor, christofet).
parent(jennifer, kesha).
parent(jennifer, christofet).


parent(fevronya, diana).
parent(fevronya, natasha).
parent(fevronya, vladimir).
parent(edward, diana).
parent(edward, natasha).
parent(edward, vladimir).

parent(dan, albert).
parent(dan, egor).
parent(betsy, albert).
parent(betsy, egor).

parent(albert, alice).
parent(albert, carl).
parent(diana, carl).
parent(diana, alice).

parent(vladimir, nadya).
parent(ella, nadya).

father(X, Y) :- 
    male(X),
    parent(X, Y),
    X \= Y.

mother(X, Y) :-
    female(X),
    parent(X, Y),
    X \= Y.

grandfather(X, Y) :-
    male(X),
    parent(X, Z),
    parent(Z, Y),
    X \= Y.

grandmother(X, Y) :-
    female(X),
    parent(X, Z),
    parent(Z, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.
sister(X, Y) :-
    female(X),
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

uncle(X, Y) :-
    male(X),
    brother(X, Z),
    parent(Z, Y),
    X \= Y.

aunt(X, Y) :-
    female(X),
    sister(X, Z),
    parent(Z, Y),
    X \= Y.

siblings(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

cousin(X, Y) :-
    male(X),
    parent(Z, X),
    parent(T, Y),
    siblings(Z, T),
    X \= Y.

cousine(X, Y) :-
    female(X),
    parent(Z, X),
    parent(T, Y),
    siblings(Z, T),
    Z \= T,
    X \= Y.

daughter(X, Y) :-
    female(X),
    parent(Y, X).

son(X, Y) :-
    male(X),
    parent(Y, X).

mother_in_law(X, Y) :-
    parent(Y, Z),
    parent(T, Z),
    parent(X, T),
    X \= Y.











