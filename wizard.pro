%Mehezabin Ahamed   8524484    CSI2120 A2

color(blue).
color(yellow).
color(green).
color(red).
letter(z).
letter(y).
letter(x).
letter(w).

generateHats(L):- findall((X,Y),(color(X),letter(Y)),L).



validRow([]) .
validRow([(R, _, Color , Letter )|H]) :-not( member((R, _, Color , _), H)),not( member((R, _, _, Letter ), H)),validRow(H).


generateRow(H, C, R) :-
	generateRow(1, H, C, R).
generateRow(5,_, _, []) .
generateRow(Row, H, C, [(C, Row, Color , Letter )|T]) :-
	Row =< 4, NR is Row + 1 ,
	select(( Color , Letter) , H, Z ),
	generateRow(NR , Z , C, T) , validRow([(C, Row, Color, Letter)|T]) .


uniqueRows([]).
uniqueRows([(R,_,Color,Letter)|H]) :-
	not(member((R,_,Color,_),H)),
	not(member((R,_,_,Letter),H)),
	uniqueRows(H).



listInsert(A,L,[A|L]). % Position for A
listInsert(A,[X|L], [X|LL]) :-
listInsert(A,L,LL). % Recursion with every

%wizardy([]):-!.
%wizardy(L):-
%



spaces(0):-!.
spaces(N):-write('   '), N1 is N-1,spaces(N1).

drawer([],0):-!.

drawer([H|T],4):-nl, drawer([H|T]).

drawer([H|T]):-
	drawer([H|T],0).

%resize the window
drawer([H|T],Count):-
	write(H),Count1 is Count+1,
		spaces(2),Count1=<4,
		drawer(T,Count1).



















