%%%-------------------------------------------------------------------
%% @doc proj public API
%% @end
%%%-------------------------------------------------------------------

-module(proj_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    certifi:cacerts(),
    proj_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
