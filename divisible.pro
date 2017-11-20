%Mehezabin Ahamed      8524484      CSI2120 ASSIGNMENT 2
%Mehezabin Ahamed
%8524484
%CSI2120
%



interval(X,X,H):-X=<H.
interval(X,L,H):- L<H, L1 is L+1,
	interval(X,L1,H).



divisible(D,U,X):- D>0,D=<U,
	interval(X,D,U),
	X mod D=:=0.

divisbleAll(D,U,L):- setof(L,
	divisible(D,U,L),L).
