% Mehezabin Ahamed   8524484 CSI2120 Assignment 3

%Question 2
%

cleanListDCG([]) --> [].
cleanListDCG([H|T]) --> [H], {number(H)},  cleanListDCG(T).
cleanListDCG(L) --> [_], cleanListDCG(L).


cleanList(L,LL) :- cleanListDCG(LL,L,[]),!.

