# Tags
> _Built from [`quay.io/ibm/alpine:3.12`](https://quay.io/repository/ibm/alpine?tab=info)_
-	`23.1.1` - [![Build Status](https://travis-ci.com/lcarcaramo/docker-erlang-otp.svg?branch=master)](https://travis-ci.com/lcarcaramo/docker-erlang-otp)

### __[Original Source Code](https://github.com/erlang/docker-erlang-otp)__

# Erlang

Erlang is a programming language used to build massively scalable soft real-time systems with requirements on high availability. Some of its uses are in telecoms, banking, e-commerce, computer telephony and instant messaging. Erlang's runtime system has built-in support for concurrency, distribution and fault tolerance.

> [wikipedia.org/wiki/Erlang_(programming_language)](https://en.wikipedia.org/wiki/Erlang_%28programming_language%29)

![logo](https://raw.githubusercontent.com/docker-library/docs/4144083772e02655d41aa10d6467aaf1e99fa77b/erlang/logo.png)

# How to use this image

## Run it as the REPL

```console
? docker run -it --rm quay.io/ibm/erlang:23.1.1
Erlang/OTP 23 [erts-11.1.1] [source] [64-bit] [smp:2:2] [ds:2:2:10] [async-threads:1] [hipe]

Eshell V11.1.1  (abort with ^G)
1>
```

## Run an Erlang escript

1. Create a `Dockerfile` that includes the Erlang escript that you want to run.
```
FROM quay.io/ibm/erlang:23.1.1

WORKDIR /home

COPY script.erl .

CMD [ "escript", "script.erl" ]
```
2. Build the image.
`docker build -t script-image image .`

3. Run a container using the image that you just built.
`docker run --name script-contianer script-image`

# License

View [license information](http://www.erlang.org/about.html) for the software contained in this image.

1.	From OTP 18 and above, Erlang is released under Apache License 2.0
2.	The previous are released under [Erlang Public License (EPL)](http://www.erlang.org/EPLICENSE). EPL is a derivative work of the Mozilla Public License (MPL). It contains terms which differ from MPL, mainly in terms of jurisdiction. The license is constructed in accordance with the laws of Sweden.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the `repo-info` repository's `erlang/` directory](https://github.com/docker-library/repo-info/tree/master/repos/erlang).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.
