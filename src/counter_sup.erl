%%%-------------------------------------------------------------------
%%% @author dannypsnl
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%% @end
%%%-------------------------------------------------------------------
-module(counter_sup).
-behaviour(supervisor).
-export([start_link/0, init/1]).

start_link() ->
  supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
  Counter = #{
    id => counter,
    start => {counter, start_link, [0]},
    restart => permanent,
    shutdown => 2000,
    type => worker
  },
  {ok, {#{strategy => one_for_one,
    intensity => 5,
    period => 30},
    [Counter]}
  }.
