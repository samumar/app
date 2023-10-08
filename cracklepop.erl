-module(cracklepop).
-export([one/0]).
-export([add_one/0]).
-export([counting/0]).
-export([delete/0]).
-export([decimal_point/2]).
-export([is_int1/1, is_int2/1, is_int1/2, is_int2/2]).
-export([crackle/0]).
-export([countup/0]).


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

decimal_point(X, DecimalDigits) when X < 0 ->
  decimal_point(-X, DecimalDigits);
decimal_point(X, DecimalDigits)->
  (X - trunc(X)) * math:pow(10,DecimalDigits).

is_int1(Num) ->
    Is_Num = decimal_point(Num, 2),
    if Is_Num == 0.0 ->
              true;
        true ->
              false
    end.

is_int2(Num) ->
    Is_Num = decimal_point(Num, 2),
    if Is_Num == 0.0 ->
              true;
        true ->
              false
    end.

crackle() ->
   Count = counting(),
   Number = list_to_integer(Count),
   N1 = Number / 3,
   N2 = Number / 5,
   Result = is_int1(N1) and is_int2(N2),
   word([
   is_int1(Count, N1),
   is_int2(Count, N2),
   is_int3(Count, Result)
   ]).

is_int1(Count, Num) ->
   Is_Num = decimal_point(Num, 2),
   if Is_Num == 0.0 ->
             div_3(Count, trunc(Num));
        true ->
             Count
   end.

is_int2(Count, Num) ->
   Is_Num = decimal_point(Num, 2),
   if Is_Num == 0.0 ->
             div_5(Count, trunc(Num));
        true ->
             Count
   end.

is_int3(Count, Num) ->
   if Num == true ->
             div_3_5();
        true ->
             Count
   end.

div_3(Count, Num) ->
   if Num == false ->
         Count;
      true ->
         "Crackle"
   end.

div_5(Count, Num) ->
   if Num == false ->
         Count;
      true ->
         "Pop"
   end.

div_3_5() ->
         "CracklePop".


word(List) ->
   One = lists:nth(1, List),
   Two = lists:nth(2, List),
   Three = lists:nth(3, List),
   String = {One, Two, Three},
   case String of
      {"Crackle", "Pop", "CracklePop"} -> element(3, String);
      {"Crackle", Two, Three} -> element(1, String);
      {One, "Pop", Three} -> element(2, String);
      {One, Two, Three} -> element(1, String)
   end.


countup() ->
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]),
   io:format("~p~n", [crackle()]).
