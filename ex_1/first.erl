-module(first).
-export([double/1, mult/2, area/3, square/1]).

%% @doc Multiplies X and Y
mult(X, Y) ->
  X * Y.

%% @doc Doubles the value of X
double(X) ->
  mult(2, X).

%% @doc Square of a X
square(X) ->
  mult(X, X).

%% @doc Fids the area
area(A,B,C) ->
  S = (A + B + C) / 2,
  math:sqrt(S * (S - A) * (S - B) * (S - C)).
