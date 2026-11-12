# ==========================================
# Pattern Matching
# ==========================================

IO.puts("=== 1. The Match Operator as an Assertion ===")
# In Elixir, '=' is like a matching assertion, not just variable assignment.
# This succeeds because 1 matches 1:
1 = 1
IO.puts("1 = 1 matched successfully.")

# If you try to match incompatible terms, Elixir raises a MatchError:
# 1 = 2  # (Uncommenting this will crash the script at runtime)


IO.puts("\n=== 2. The Pin Operator (^) ===")
# By default, variables on the left side of '=' get re-bound.
# Use the pin operator (^) to match against an *existing* value instead.
x = 10
IO.puts("x is currently bound to: #{x}")

# This succeeds because x is indeed 10:
^x = 10
IO.puts("Pinned match ^x = 10 passed!")

# If x was 10, ^= 20 would fail:
# ^x = 20 


IO.puts("\n=== 3. Matching Tuples & Lists ===")
# Tuple matching (structure and size must match precisely)
{status, user, id} = {:ok, "Alice", 42}
IO.puts("Matched tuple -> Status: #{status}, User: #{user}, ID: #{id}")

# List matching
[first, second, third] = [10, 20, 30]
IO.puts("Matched list elements: #{first}, #{second}, #{third}")


IO.puts("\n=== 4. Head and Tail Matching ([head | tail]) ===")
# Essential for working with lists and recursion in Elixir
numbers = [1, 2, 3, 4, 5]
[head | tail] = numbers

IO.inspect(head, label: "Head (first element)")
IO.inspect(tail, label: "Tail (the rest of the list)")


IO.puts("\n=== Exercises ===")

# Exercise 1: Use the pin operator
expected_code = 200
response_code = 200
^expected_code = response_code
IO.puts("Exercise 1 passed: Response code matches expected code #{expected_code}.")

# Exercise 2: Destructure a nested tuple
coordinates = {:point, {10, 20}}
{:point, {x_coord, y_coord}} = coordinates
IO.puts("Exercise 2 -> X: #{x_coord}, Y: #{y_coord}")
