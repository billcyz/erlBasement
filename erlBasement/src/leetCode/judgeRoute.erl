%% @author billcyz
%% @doc @todo Add description to judgeRoute.


-module(judgeRoute).

-export([judge_route/1, judge/3]).

%% -----------------------------------------------------------------------

%% input "UDURL"
judge_route(RouteL) ->
	judge(RouteL, 0, 0).

-spec judge(list(), integer(), integer()) -> true | false.
judge([], ResultX, ResultY) ->
	if
		ResultX =:= 0, ResultY =:= 0 -> true;
		true -> false
	end;
judge(RouteL, ResultX, ResultY) ->
	[H|T] = RouteL,
	if
		H =:= 68 -> judge(T, ResultX, ResultY - 1); %% D
		H =:= 85 -> judge(T, ResultX, ResultY + 1); %% U
		H =:= 76 -> judge(T, ResultX - 1, ResultY); %% L
		H =:= 82 -> judge(T, ResultX + 1, ResultY)  %% R
	end.



