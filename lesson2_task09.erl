-module(lesson2_task09).
-export([pack/1]).

pack([]) -> [];
pack([H | T]) -> 
    {Group, Rest} = group(H, T),
    [[H | Group] | pack(Rest)].

group(_, []) -> {[], []};
group(H, [H | T]) -> 
    {Group, Rest} = group(H, T),
    {[H | Group], Rest};
group(_, List) -> {[], List}.
