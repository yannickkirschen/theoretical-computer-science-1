% Sums all numbers on odd positions in a list
%
% ?- [odds].
% ?- odds([5,3,2,6,5,7,2,1], I).

odds([], 0).
odds([X], X).
odds([X,_|R], Z) :- odds(R, N), Z is N + X.
