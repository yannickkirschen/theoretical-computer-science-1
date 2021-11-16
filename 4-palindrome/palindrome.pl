% Create a palindrome.
%
% swipl
% ?- [palindrome].
% ?- palindrome().

concatenate([], L, L).
concatenate([X|R], L, [X|RL]) :- concatenate(R, L, RL).

palindrome([], []).
palindrome([X|R], [X|T]) :- palindrome(R, P), concatenate(P, [X], T).
