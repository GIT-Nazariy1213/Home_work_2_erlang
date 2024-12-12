-module(lesson2_task09).
-export([pack/1]).

pack([]) -> [];
pack([H | T]) -> 
    {Group, Rest} = span(fun(X) -> X == H end, T),
    [[H | Group] | pack(Rest)].

span(_, []) -> {[], []};
span(Pred, [H | T]) when Pred(H) -> 
    {Group, Rest} = span(Pred, T),
    {[H | Group], Rest};
span(_, List) -> {[], List}.
