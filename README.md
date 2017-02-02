# erlang_bertie
Programming Erlang second edition; chapter 25

## Making a Shareable Archive and Managing Your Code with Rebar3.

bertie
=====

An OTP application 

Build
-----

    $ rebar3 compile
    $ rebar3 shell
    1> application:start(bertie).
    2> bertie:guess("Laurent Deleris").
