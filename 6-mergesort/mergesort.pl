% Sort a list by using mergesort.
%
% swipl
% ?- [mergesort].
% ?- mergesort([5,3,2,6,5,7,2,1], L).

divide([], [], []).
divide([X|R], [X|G], H) :- divide(R, H, G).

merge(A, [], A).
merge([], B, B).
merge([X|R], [Y|S], [X|T]) :- X =< Y, merge(R, [Y|S], T).
merge([X|R], [Y|S], [Y|T]) :- X > Y, merge([X|R], S, T).

mergesort([], []).
mergesort([E], [E]).
mergesort(L, R) :- divide(L, A, B), mergesort(A, AS), mergesort(B, BS), merge(AS, BS, R).
