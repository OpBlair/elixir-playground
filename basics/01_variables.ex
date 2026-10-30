# Variables (Unused variables prefixed with _ to avoid compiler warnings)
_name = "Ruby"
_version = 1.2
_is_patched = true

# Naming convention
_username = "West Ridge"
_user_age = 28

# Data Types
_age = 30
_salary = 1_000
_temperature = 20.5

_is_logged_in = true
_is_admin = false

# Atoms
_status = :ok
_error_message = :not_found
_my_atom = :hello_world


IO.puts("=== 1. Variables & Re-binding ===")
name = "Alice"
age = 30
IO.puts("Name: #{name}, Age: #{age}")

# Re-binding: Data is immutable, but variables can point to new values
age = age + 1
IO.puts("Updated Age (re-bound): #{age}")


IO.puts("\n=== 2. The Match Operator (=) ===")
# In Elixir, '=' is a pattern matching operator, not just a simple assignment.
x = 10
IO.puts("x is bound to: #{x}")

# You can match structures, like tuples:
{first_name, last_name} = {"John", "Doe"}
IO.puts("Matched names: #{first_name} #{last_name}")


IO.puts("\n=== 3. Basic Data Types ===")

# Integers & Floats
my_integer = 42
large_num = 1_000_000 # Underscores are ignored for readability
my_float = 3.14159
IO.puts("Integer: #{my_integer}, Large: #{large_num}, Float: #{my_float}")

# Booleans (under the hood, true is just the atom :true)
is_active = true
is_admin = false
IO.puts("Is active? #{is_active} | Is admin? #{is_admin}")

# Atoms (constants whose value is their own name, starting with a colon)
status = :ok
error_code = :not_found
IO.puts("Status atom: #{status}, Error atom: #{error_code}")

# Strings (enclosed in double quotes, support interpolation with #{})
greeting = "Hello"
target = "Elixir"
message = "#{greeting}, #{target}!"
IO.puts(message)


IO.puts("\n=== 4. Basic Operators ===")

# Arithmetic Operators
sum = 10 + 5
product = 4 * 5
division_float = 10 / 3 # Note: / always returns a float in Elixir
IO.puts("Sum: #{sum}, Product: #{product}, Division (float): #{division_float}")

# Comparison Operators
is_equal = (5 == 5.0)          # true (loose equality for values)
is_strictly_equal = (5 === 5.0) # false (strict equality checks type too)
IO.puts("5 == 5.0: #{is_equal}")
IO.puts("5 === 5.0: #{is_strictly_equal}")

# Logical Operators
# Strict (require booleans): and, or, not
# Relaxed (truthy/falsy friendly): &&, ||, !
result_and = true and false
result_or = true || false
IO.puts("true and false: #{result_and}")
IO.puts("true || false: #{result_or}")


# Exercise 1
score = 50
score = score + 25
IO.puts("Score = #{score}")

# Exercise 2: Pattern matching (unused matched variables prefixed with _)
{_status, _message, user_id} = {:success, "User created", 101}
IO.puts("User id: #{user_id}")

# Exercise 3: Types and Comparison
item_price = 14.99
quantity = 3
subtotal = item_price * quantity
is_eligible_for_discount = subtotal > 40.00
IO.puts("Eligible for discount? #{is_eligible_for_discount}")
