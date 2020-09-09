male(albert).
male(bill).
male(bob).
male(carl).
male(charlie).
male(dan).
male(edward).
male(egor).
male(vladimir).

female(alice).
female(fevronya).
female(betsy).
female(diana).
female(natasha).


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













