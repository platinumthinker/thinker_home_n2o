.PHONY: update release

release/thinker_home/bin/thinker_home: ebin/thinker_home.app
	relx

ebin/thinker_home.app: src/*.erl deps
	rebar compile

update:
	rebar update-deps

deps: | update
	rebar get-deps

clean:
	-rm -rf release/thinker_home/
	rebar clean
