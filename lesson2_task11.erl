-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) -> 
    encode_packed(lesson2_task09:pack(List)).

encode_packed([]) -> [];
encode_packed([[H] | Rest]) -> 
    [H | encode_packed(Rest)];
encode_packed([[H | T] | Rest]) -> 
    [{length([H | T]), H} | encode_packed(Rest)].
