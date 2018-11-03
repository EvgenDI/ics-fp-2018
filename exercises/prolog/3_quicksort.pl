% Определить предикат qsort(L, K) который для заданного списка целых чисел возвращает отсортированный 

pivot(_, [], [], []).

pivot(P, [H|T], [H|L], R) :-
    P >= H,
    pivot(P, T, L, R).

pivot(P, [H|T], L, [H|R]) :-
    pivot(P, T, L, R).

qsort([], []).

qsort([H|T], S) :-
    pivot(H, T, L, R),
    qsort(L, LS),
    qsort(R, RS),
    append(LS, [H|RS], S).

% Test

:- initialization
    qsort([2, 7, 8, 5, 3, 1, 9, 6, 4, 0], S),
    writeln(S),
    halt.
