% Removes all zero values from a list, keep positive values and multiply negative values by -2.
%
% swipl
% ?- [onlypos].
% ?- onlypos([0, 2, -4, 7, 5, -6], L).

onlypos([], _).
onlypos([X], []) :- X = 0.
onlypos([X], [X]) :- X > 0.
onlypos([X], [Y]) :- Y is -2 * X.
onlypos([X|Y], L) :- onlypos([X], A), onlypos(Y, B), append(A, B, L).
