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
	
	check_distance(ListA, ListB, 0).

check_distance() -> 1.