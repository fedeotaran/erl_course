-module(third).

-export([xor_1/2, xor_2/2, xor_3/2, max_three/3, how_many_equal/3]).

%% @doc xor_1 impl
xor_1(X, Y) -> not (X == Y).

%% @doc xor_1 impl
xor_2(X, Y) -> X =/= Y.

%% @doc xor_1 impl
xor_3(X, Y) -> X or Y and X =/= Y.

%% @doc return max of three values
max_three(A, B, C) -> max(A, max(B, C)).

%%% @doc return quantity of equals arguments
how_many_equal(A, A, A) -> 3;
how_many_equal(A, A, _) -> 2;
how_many_equal(_, A, A) -> 2;
how_many_equal(A, _, A) -> 2;
how_many_equal(_, _, _) -> 0.
