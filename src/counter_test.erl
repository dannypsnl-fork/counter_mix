%%%-------------------------------------------------------------------
%%% @author dannypsnl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. May 2022 5:01 PM
%%%-------------------------------------------------------------------
-module(counter_test).
-author("dannypsnl").
-include_lib("eunit/include/eunit.hrl").

-import(counter, [start_link/1, next/0, current/0, increase/1, decrease/1]).

simple_test() ->
  start_link(100),
  ?assertEqual(100, current()),
  increase(100),
  ?assertEqual(200, current()),
  decrease(10),
  ?assertEqual(190, next()),
  ?assertEqual(191, current()).