%Mehezabin Ahamed 8524484 CSI2120 ASSIGNMENT 1
%2
%(a)
%base case
%the values for both X and Y are 0
sosd(0,0).

%recursive  fuction
sosd(X,Y):-X>0,        %A strictly greater than 0
	A is X mod 10,  %remainder
	B is X//10,     %integer division
	sosd(B,C),      %call the function again
	Y is (A*A+C).   %sum the squares of the digits of the number obtained a
%(b)

unhappy(Z):-
	(Z=0;Z=4;Z=16;Z=37;Z=58;Z=89;Z=145;Z=42;Z=20), %stops calculation when any of the numbers listed is reached
	writeln(Z). %prints the number that is reached
happyNumber(1):-writeln(1),!.
happyNumber(Z):-sosd(Z,V),
	not(unhappy(V)),
	happyNumber(V).
