.PHONY: update release

release/thinker_home/bin/thinker_home: ebin/thinker_home.app
	relx --dev-mode

ebin/thinker_home.app: src/*.erl deps
	rebar compile

update:
	rebar update-deps

deps: | update
	rebar get-deps
