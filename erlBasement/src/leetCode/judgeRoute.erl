%% @author billcyz
%% @doc @todo Add description to judgeRoute.


-module(judgeRoute).

-export([judge/1]).

%% -----------------------------------------------------------------------

%% input "UDURL"
-spec judge(list()) -> true | false.
judge(RouteL) ->
	[H|_] = RouteL,
	H.


