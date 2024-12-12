-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) ->
    lists:map(fun(X) -> 
        case length(X) of 
            1 -> hd(X); 
            _ -> {length(X), hd(X)} 
        end 
    end, lesson2_task09:pack(List)).
