abssum([], 0).
abssum([X|R], S) :- X < 0, abssum(R, Z), S is Z - X.
abssum([X|R], S) :- X > 0, abssum(R, Z), S is Z + X.
abssum([0|R], S) :- abssum(R, S).
