-module(second).
-export([hypotenuse/2, perimeter/2, area/2]).

%% @doc Find the hypotenuse of two sides
hypotenuse(A, B) ->
  S = first:square(A) + first:square(B),
  math:sqrt(S).

%% @doc Find the perimeter
perimeter(A, B) -> A + B + hypotenuse(A, B).

%% @doc Finds the area of a triangle
area(A, B) ->
  first:mult(A, B) / 2.
