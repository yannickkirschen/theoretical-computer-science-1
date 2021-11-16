% Reverse a list.
%
% swipl
% ?- [rev].
% ?- rev([1,2,3,4], L).

concatenate([], L, L).
concatenate([X|R], L, [X|RL]) :- concatenate(R, L, RL).

rev([], []).
rev([X|R], U) :- rev(R, S), concatenate(S [X], U).
