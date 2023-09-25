-module(count).
-export([one/0]).
-export([add_one/0]).
-export([counting/0]).
-export([delete/0]).


one() ->
  file:write_file("number.txt", ["1"]),
  read_number_value().

read_number_value() ->
  Read = file:read_file("number.txt"),
  Extract = element(2, Read),
  binary:bin_to_list(Extract).

add_one() ->
  Read = file:read_file("number.txt"),
  Extract = element(2, Read),
  Number = binary:bin_to_list(Extract),
  addition(Number).

addition(Number) ->
   Num = list_to_integer(Number) + 1,
   NumStr = integer_to_list(Num),
   file:write_file("number.txt", [NumStr]),
   new_number_value().

new_number_value() ->
   Read = file:read_file("number.txt"),
   Extract = element(2, Read),
   binary:bin_to_list(Extract).


counting() ->
   Data = filelib:is_file("number.txt"),
   if Data == false ->
                 one();
            true ->
                 add_one()
   end.

delete() ->
   file:delete("number.txt").
