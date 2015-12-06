.PHONY: compile co doc docs test clean deps all
co: compile

compile:
	rebar compile skip_deps=true

deps:
	rebar get-deps compile

all: deps

clean:
	rebar clean

doc: docs
docs:
	rebar doc
test:
	rebar eunit
