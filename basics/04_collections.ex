# ==========================================
# Collections (Lists, Tuples, and Maps)
# ==========================================

IO.puts("=== 1. Lists (Linked Lists) == -->")
# Lists are linked lists in Elixir. They are great for sequential traversal,
# but slow for random access (O(n)). Elements can be of mixed types.

list = [1, 2, 3, "apple", true]
IO.inspect(list, label: "Base list")

# Prepending is fast (O(1))
new_list = [0 | list]
IO.inspect(new_list, label: "After prepending 0")

# List concatenation (++) and subtraction (--)
list_a = [1, 2, 3]
list_b = [3, 4, 5]
combined = list_a ++ list_b
subtracted = combined -- [3, 3] # Removes occurrences from left to right
IO.inspect(combined, label: "Concatenated")
IO.inspect(subtracted, label: "Subtracted")

# Accessing list elements (less common for large lists, use Enum module instead)
IO.puts("First element using Enum.at: #{Enum.at(list, 0)}")


IO.puts("\n=== 2. Tuples (Contiguous Memory) ===")
# Tuples are stored contiguously in memory. They have fast access (O(1)) by index,
# but expensive updates because they require copying the whole tuple.
# Generally used for function return values (e.g., {:ok, data} or {:error, reason}).

my_tuple = {:ok, "User loaded", 42}
IO.inspect(my_tuple, label: "Sample Tuple")

# Accessing elements by index using elem/2
status = elem(my_tuple, 0)
message = elem(my_tuple, 1)
IO.puts("Tuple elements -> Status: #{status}, Message: #{message}")

# Updating an element using put_elem/3 (returns a *new* tuple, data is immutable)
updated_tuple = put_elem(my_tuple, 2, 99)
IO.inspect(updated_tuple, label: "Updated Tuple")


IO.puts("\n=== 3. Maps (Key-Value Stores) ===")
# Maps are Elixir's key-value data structure. Keys can be any type.

# Keyword-like syntax for atom keys:
user = %{name: "Alice", age: 30, admin: true}
IO.inspect(user, label: "User Map")

# Accessing values using dot notation (only works for atom keys)
IO.puts("User Name: #{user.name}")

# Accessing values using bracket syntax (works for any key type)
IO.puts("User Age: #{user[:age]}")

# Updating maps (returns a new map)
# Syntax: %{map | key => new_value} (only for updating *existing* keys)
older_user = %{user | age: 31}
IO.inspect(older_user, label: "Updated Map (Age 31)")

# Adding new keys using the Map module
complete_user = Map.put(older_user, :email, "alice@example.com")
IO.inspect(complete_user, label: "Map with new key added")


IO.puts("\n=== Exercises ===")

# Exercise 1: List operation
# Create a list of numbers 1 through 5, append 6, and double the numbers using Enum.map
numbers = [1, 2, 3, 4, 5] ++ [6]
doubled = Enum.map(numbers, fn n -> n * 2 end)
IO.inspect(doubled, label: "Exercise 1 (Doubled numbers)")

# Exercise 2: Map manipulation
# Create a product map with :name, :price, and :in_stock keys, then update the price
product = %{name: "Mechanical Keyboard", price: 89.99, in_stock: true}
discounted_product = %{product | price: 79.99}
IO.inspect(discounted_product, label: "Exercise 2 (Discounted Product)")
