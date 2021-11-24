% Zip two lists element by element.
%
% swipl
% ?- [zip].
% ?- zip([1,3,5], [2,4,6], L).

zip([], L, L).
zip(L, [], L).
zip([X|R], [Y|S], [X,Y|T]) :- zip(R, S, T).
