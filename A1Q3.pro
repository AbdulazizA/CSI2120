%Mehezabin Ahamed 8524484 CSI2120 ASSIGNMENT 1
%
%



%  plant( name, partial sun, shade, sun, color1, color2,
%  color3, color4, color5, startH, endH, startZ, endZ, period).


plant('Blue Lobelia',
      partial, shade, sun,
      blue, null, null, null, null,
      6, 12, 2, 11, annual).

plant( 'Impatiens',
       null, shade, sun,
       red, white, pink, null, null,
       null, null, 10, 11, annual).

plant(  'Periwinkle',
	partial, shade, sun,
	blue, null, null, null,
	0, 6, 4, 9, perennial).

plant( 'Anemone', partial, null, sun,
       pink, white, null, null, null,
       12, 36, 4, 8, perennial).

plant( 'Marigold',
       null, null, sun,
       yellow, orange, null, null, null,
       3, 12, null, null, annual).

plant( 'Black-eyed  susan',
       partial, null, sun,
       yellow, null, null, null, null,
       12, 24, 3, 11, annual).

plant( ' Bleeding heart',
       partial, shade, null,
       pink, white, null, null, null,
       6, 12, 3, 9, perennial).

plant( 'Chrysanthemum',
       partial, null, sun,
       red, yellow, blue, white, null,
       12, 36, 5, 9, perennial).

plant('False Lupine',
      partial, null, sun,
      yellow, null, null, null, null,
      12, 96, 4, 8, perennial).

plant('Heather',
      partial, null, sun,
      purple, null, null, null, null,
      36, 96, 6, 10, perennial).

plant('Iris',
      partial, null, sun,
      blue, orange, pink, red, white,
      6, 36, 3, 9, perennial).

plant( 'Phlox',
       null, null, null,
       purple, red, pink, null, null,
       12, 36, 2, 11, annual).

hardy(P):- plant(P,_,_,_,_,_,_,_,_,_,X,Y,_, perennial),
	X>48, Y<6.



trio(P,X,Q,Y,R,Z):-
	( plant(X,_,_,_,P,_,_,_,_,_,_,_,_,_);plant(X,_,_,_,_,P,_,_,_,_,_,_,_,_);plant(X,_,_,_,_,_,P,_,_,_,_,_,_,_); plant(X,_,_,_,_,_,_,P,_,_,_,_,_,_); plant(X,_,_,_,_,_,_,_,P,_,_,_,_,_)),
	( plant(Y,_,_,_,Q,_,_,_,_,_,_,_,_,_);plant(Y,_,_,_,_,Q,_,_,_,_,_,_,_,_);plant(Y,_,_,_,_,_,Q,_,_,_,_,_,_,_); plant(Y,_,_,_,_,_,_,Q,_,_,_,_,_,_); plant(Y,_,_,_,_,_,_,_,Q,_,_,_,_,_)),
	( plant(Z,_,_,_,R,_,_,_,_,_,_,_,_,_);plant(Z,_,_,_,_,R,_,_,_,_,_,_,_,_);plant(Z,_,_,_,_,_,R,_,_,_,_,_,_,_); plant(Z,_,_,_,_,_,_,R,_,_,_,_,_,_); plant(Z,_,_,_,_,_,_,_,R,_,_,_,_,_)).


paul(X):-between(0,36,K),
	plant(X,_,_,_,_,_,_,_,_,_,K,V,W,_),
	not(V=null),not(W = null),
	between(V,W,7).

mary(Y):- plant(Y,_,_,_,P,Q,R,S,T,_,_,V,W,_),
	not(P=yellow; Q=yellow; R=yellow; S=yellow; T=yellow),
	not(V=null;W=null),
	between(V,W,7).


suggestion(paul(X),mary(Y)):-paul(X),mary(Y).














