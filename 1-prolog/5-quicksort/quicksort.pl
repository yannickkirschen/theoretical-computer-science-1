% Sort a list by using quicksort.
%
% swipl
% ?- [quicksort].
% ?- quicksort([5,3,2,6,5,7,2,1], L).

split([], _, [], []).
split([X|R], E, [X|K], G) :- X =< E, split(R, E, K, G).
split([X|R], E, K, [X|G]) :- X > E, split(R, E, K, G).

quicksort([], []).
quicksort([X|U], S) :- split(U, X, K, G), quicksort(K, SK), quicksort(G, SG), append(SK, [X|SG], S).
