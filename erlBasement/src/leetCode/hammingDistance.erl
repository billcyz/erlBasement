%% @author billcyz
%% @doc @todo Add description to hammingDistance.


-module(hammingDistance).

-export([detect_distance/2]).

%% ----------------------------------------------------------------------

%% binary

-spec detect_distance(integer(), integer()) -> integer().
detect_distance(NumA, NumB) ->
	BinA = integer_to_binary(NumA, 2),
	BinB = integer_to_binary(NumB, 2),
	
	io:format("~p~n", [BinA]),
	io:format("~p~n", [BinB]),
	
	ListA = binary_to_list(BinA),
	ListB = binary_to_list(BinB),
	
	io:format("NumA binary is ~p~n", [ListA]),
	io:format("NumB binary is ~p~n", [ListB]),
	
	check_distance(ListA, ListB, 1, []).

check_distance([], _, _, RL) -> RL;
check_distance(_, [], _, RL) -> RL;
check_distance([AH|AT], [BA|BT], ListPosition, RL) ->
	if
		AH =:= BA -> check_distance(AT, BT, ListPosition + 1, RL);
		true -> 
			io:format("~p~n", [ListPosition]),
			check_distance(AT, BT, ListPosition + 1, RL ++ [ListPosition])
	end.
