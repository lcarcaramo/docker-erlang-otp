#!/usr/bin/env escript
main(_) -> 
	printGreen("Success! This script is running on the quay.io/ibmz/erlang:23.1.1 image.\n"),
	printGreen("Terminating...").
printGreen(STR) ->
	ANSI_GREEN = "\e[32m",
	ANSI_RESET = "\e[0m",
	io:format("~s~s~s", [ANSI_GREEN, STR, ANSI_RESET]).
