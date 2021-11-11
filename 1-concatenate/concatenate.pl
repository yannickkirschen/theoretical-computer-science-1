% Concatenate two lists.
%
% swipl
% ?- [concatenate].
% ?- concatenate([1,2,3], [4,5,6], L).

concatenate([], L, L).
concatenate([X|R], L, [X|RL]) :- concatenate(R, L, RL).
