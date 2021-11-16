% Reverse a list.
%
% swipl
% ?- [rev].
% ?- rev([1,2,3,4], L).

:- include('../1-concatenate/concatenate.pl').

rev([], []).
rev([X|R], U) :- rev(R, S), concatenate(S [X], U).
