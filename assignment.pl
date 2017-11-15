%Definitions for isElementInList(El, List)
isElementInList(el,[]).
isElementInList(H,[H|[]]):- !.
isElementInList(El,[H|T]):-
    El=H, !;
    isElementInList(El,T).

%Definitions for reverseList(List, ReversedList)
reverseList([],[]).
reverseList([H|T], RevList):-
    reverseList(T, Rev),
    mergeLists(Rev,[H],RevList).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd([],L,L).
insertElementIntoListEnd(El,L,Output):-
    mergeLists(L,[El],Output).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([],L,L).
mergeLists([H|T],L,[H|M]):-
    mergeLists(T,L,M).

