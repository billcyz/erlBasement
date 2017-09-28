%% @author billcyz
%% @doc @todo Add description to twoSum.


-module(twoSum).

-export([twoSum/2]).

%% ------------------------------------------------------------------------

%% leetCode twoSum solution
%% Return two list members that the sum of both member equals to target
-spec twoSum(list(), number()) -> list().
twoSum(NumList, Target) ->
	[H|T] = NumList,
	L = [{X, Y} || X <- [H], 
				   Y <- T, 
				   X + Y == Target],
	twoSum(T, L, Target).

twoSum([], RList, _Target) -> RList;
twoSum(NList, RList, Target) ->
	[H|T] = NList,
	L = [{X, Y} || X <- [H],
				   Y <- T,
				   X + Y == Target],
	twoSum(T, RList ++ L, Target).

