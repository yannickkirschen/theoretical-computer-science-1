% Exam 2019, Task 9a

mystery([], []).
mystery([_], []).
mystery([X,Y|R], [X,Y|S]) :- X > Y, mystery(R, S).
mystery([_,_|R], S) :- mystery(R, S).
