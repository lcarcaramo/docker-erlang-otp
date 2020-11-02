-module(test).
-compile([test/0]).

test() -> io:format("Success! This script is running on the quay.io/ibmz/erlang:23.1.1 image.~n", []);
