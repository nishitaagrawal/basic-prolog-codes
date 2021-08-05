male(leo).
male(mike).
male(mario).
male(albert).
male(alex).

female(alexa).
female(martha).
female(tokyo).
female(martha).
female(austin).
female(tia).

parent(mike,alexa).
parent(mike,martha).
parent(mike,leo).
parent(tokyo,alexa).
parent(tokyo,martha).
parent(tokyo,leo).
parent(albert,mike).
parent(albert,mario).
parent(albert,tia).
parent(austin,mike).
parent(austin,mario).
parent(austin,tia).
parent(alex,austin).

brother(X,Y):-male(X),parent(Z,X),parent(Z,Y),X\=Y,!.
sister(X,Y):-female(X),parent(Z,X),parent(Z,Y),X\=Y.
father(X,Y):-male(X),parent(X,Y).
mother(X,Y):-female(X),parent(X,Y).
son(X,Y):-parent(Y,X),male(X).
daughter(X,Y):-parent(Y,X),female(X).
uncle(X,Y):-male(X),brother(X,Z),parent(Z,Y).
aunt(X,Y):-female(X),sister(X,Z),parent(Z,Y).
grandfather(X,Y):-male(X),parent(X,Z),parent(Z,Y).
grandmother(X,Y):-female(X),parent(X,Z),parent(Z,Y).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
