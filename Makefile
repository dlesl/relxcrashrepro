all: build

REBAR3_VERSION ?= 3.14.3

rebar3-%:
	wget https://github.com/erlang/rebar3/releases/download/$*/rebar3 -O ./rebar3-$*
	chmod +x ./rebar3-$*

build: rebar3-$(REBAR3_VERSION)
	cp rebar3-$(REBAR3_VERSION) rebar3
	cd proj && ../rebar3 release
