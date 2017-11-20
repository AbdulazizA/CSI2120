%Mehezabin Ahamed    8524484   CSI2120    ASSIGNMENT 3
%QUESTION 1

:- dynamic student/3, mark/4.


% name, studentId, course list
student(name(blake, [ann]), 33333, ['CSI2120'] ).

% course, type, name as list of text, maximum marks
evaluation('CSI2120', assignment(1), ['Prolog', database ], 5).

/**required for allAllMarks ***/
evaluation('CSI2120', midterm(1), [ 'Prolog', database], 26).

% course, studentId, evaluation, mark
mark('CSI2120', 33333, assignment(1), 3.5 ).

%A
addStudent:- write('Student Last Name: '),
	read(X),
	write('Student First name: '),
	read(Y),
	write('Student Id: '),
	read(Z),
	not(student(name(_, [_]), Z, [_] )),
	assert(student(name(X, Y), Z, [] )).
%B
add(X,Y):- student(N,Y,CourseList),
	not(member(X,CourseList)),
	append([X],CourseList,Result),
	retract(student(N,Y,CourseList)),
	assert(student(N,Y,Result)).

%C
addAllMarks(X, Y) :-forall(
		(
		evaluation(X, Y, _, G),
		student(Name, ID, CourseList),
		member(X, CourseList),
		not(mark(X, ID, Y, _))
		),(
		    repeat,
		    write(Name), write(' Mark (out of '),
		    write(G),write('): '),
		    read(Grade),
		    Grade >= 0, Grade =< G, !,
		    assert(mark( X, ID, Y, Grade))
		)).


%D
listAllMarks(X,T,L):- setof(( Id, M),mark(X, Id, T, M), L).

%E
averageMark(X,T,A):-findall(M, mark( X, _, T, M), MList),
	sumlist(MList,MSum),
	length(MList,MLength),
	MLength > 0,
	A is MSum / MLength.









