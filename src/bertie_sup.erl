%%%-------------------------------------------------------------------
%% @doc bertie top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(bertie_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================

%% Child :: {Id,StartFunc,Restart,Shutdown,Type,Modules}
init([]) ->
    %{ok, { {one_for_all, 0, 1}, [{tag1, {bertie, start, []}, permanent, 10000, worker [bertie]}]}}.
    {ok, {{one_for_one, 3, 10}, 
	  [{tag1, 
	    {bertie, start_link, []},
	    permanent, 
	    10000, 
	    worker, 
	    [bertie]}
	  ]}}.

%%====================================================================
%% Internal functions
%%====================================================================
