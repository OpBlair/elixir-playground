# ==========================================
# Control Flow & Conditionals
# ==========================================

IO.puts("=== 1. If and Unless Expressions ===")
# In Elixir, 'if' and 'unless' are expressions that return a value (like a ternary).

temperature = 28

# If statement
weather_msg = if temperature > 25 do
  "It's a hot day!"
else
  "Comfortable weather."
end
IO.puts("Weather message: #{weather_msg}")

# Unless statement (executes block if the condition is FALSE)
is_raining = false
unless is_raining do
  IO.puts("Clear skies—leave the umbrella at home!")
end


IO.puts("\n=== 2. Case Statements (Pattern Matching Flow) ===")
# 'case' allows you to match a value against multiple patterns.

response = {:error, :unauthorized}

result = case response do
  {:ok, data} ->
    "Success with data: #{data}"
  {:error, :not_found} ->
    "Resource could not be found."
  {:error, reason} ->
    "Failed with error reason: #{reason}"
  _ ->
    "Unknown or unexpected response format"
end
IO.puts(result)


IO.puts("\n=== 3. Cond Statements (Multi-Condition Branching) ===")
# 'cond' is like an if-else if-else chain. It checks conditions top-to-bottom.
# Use 'true' as a final catch-all branch.

score = 82

letter_grade = cond do
  score >= 90 -> "A"
  score >= 80 -> "B"
  score >= 70 -> "C"
  score >= 60 -> "D"
  true -> "F"  # Catch-all default
end
IO.puts("Score #{score} gets a letter grade: #{letter_grade}")


IO.puts("\n=== Exercises ===")

# Exercise 1: Use 'case' to handle different HTTP status atoms
http_status = 404

status_description = case http_status do
  200 -> "OK"
  201 -> "Created"
  400 -> "Bad Request"
  404 -> "Not Found"
  500 -> "Internal Server Error"
  _ -> "Unknown Status Code"
end
IO.puts("HTTP Status #{http_status}: #{status_description}")

# Exercise 2: Use 'cond' to categorize age groups
age = 17

category = cond do
  age < 13 -> "Child"
  age < 20 -> "Teenager"
  age < 65 -> "Adult"
  true -> "Senior"
end
IO.puts("Age #{age} category: #{category}")
