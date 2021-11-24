% Create a palindrome.
%
% ?- [palindrome].
% ?- palindrome([A, B], L).

:- include('../1-concatenate/concatenate.pl').

palindrome([], []).
palindrome([X|R], [X|T]) :- palindrome(R, P), concatenate(P, [X], T).
