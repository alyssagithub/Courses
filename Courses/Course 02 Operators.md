# Course #2: Operators
- Level: Beginner
- Sections: Logical Operators, Relational Operators, Arithmetic Operators, and Compound Assignment Operators
- Minimum Requirement: Must Know [Variables](https://github.com/alyssagithub/Roblox-Scripting-School/blob/main/Courses/Course%2001%20Variables.md)
- Estimated Reading Time: ~6 Minutes

Operators are signs used to get, compare, or set a value.

## Word Dictionary
- **Falsy:** a value that is `false` or `nil`.
- **Truthy:** any value that isn't a falsy.

## 1. Logical Operators
A logical operator is an operator that is used for boolean and truthy/falsy values.
### Usage of `and`
Using `and` allows you to have a value given when a value is truthy; if the value is falsy, it will give the initial value.
<br>Here's an example of using `true`, a truthy, with `and`:
```lua
local Boolean = true
print(Boolean and "Hello") -- Outputs: Hello
```
Here's an example of using `false`, a falsy, with `and`:
```lua
local Boolean = false
print(Boolean and "Hello") -- Outputs: false
```
Here's an example of using `nil`, a falsy, with `and`:
```lua
local Nothing = nil
print(Nothing and "Hello") -- Outputs: nil
```
### Usage of `or`
Now that we know what `and` does, let's see how we can use `or` and how we can use it with `and`.
<br>You can use `or` to give a value when the initial value is falsy, allowing it to be paired with `and`.
<br>Here's an example of using a truthy with `or`.
```lua
local Boolean = true
print(Boolean or "Hello") -- Outputs: true
```
Here's an example of using a falsy with `or`.
```lua
local Boolean = false
print(Boolean or "Hello") -- Outputs: Hello
```
Now, let's see how we can use this with `and`. First, we'll start with a separate version to visualize how this works.
```lua
local Boolean = true
local Result = Boolean and "Hello" -- Has the value of "Hello"
print(Result or "Goodbye") -- Outputs: Hello
```
With a falsy:
```lua
local Boolean = false
local Result = Boolean and "Hello" -- Has the value of false
print(Result or "Goodbye") -- Outputs: Goodbye
```
Now, let's simplify this a bit.
```lua
local Boolean = false
print(Boolean and "Hello" or "Goodbye") -- Outputs: Goodbye
```
Then, with no variable use:
```lua
print(false and "Hello" or "Goodbye") -- Outputs: Goodbye
```
Using `and` with `or` in a combination like this counts as a ternary operation, which is used for checking a value and giving another value based on that result.
### Usage of `not`
Using `not` allows you to have the opposite of a truthy or falsy. Note that both falsies, `nil` and `false`, will give true, while all truthy values will give false, for example:
```lua
print(not true) -- Outputs: false

print(not false) -- Outputs: true

print(not "A String!") -- Outputs: false
-- This is because any value that isn't false or nil is a "truthy."
```
## 2. Relational Operators
Relational operators are for comparing two values to get a resulting boolean.
<br>1. The equal to (`==`) operator. This operator is for checking if a value is the same as another value.
```lua
print(true == false) -- Outputs: false

print(true == true) -- Outputs: true

print(false == false) -- Outputs: true

print(true == "true") -- Outputs: false

print("Hello" == "Hello") -- Outputs: true

print("Goodbye" == "Hello") -- Outputs: false
```
2. The not equal to (`~=`) operator. This operator is the opposite of the equal to operator and is for checking if a value isn't the same as another value.
```lua
print(true ~= false) -- Outputs: true

print(true ~= true) -- Outputs: false
```
As you can see, the boolean you get from the `not equal to` operator will be the opposite of the "equal to" operator.
<br>3. The greater than (`>`) operator. This operator is for checking if a numerical value is bigger than another numerical value.
```lua
print(1 > 0) -- Outputs: true

print(0 > 1) -- Outputs: false

print(1 > 1) -- Outputs: false
-- This is because 1 and 1 are the same number and can't be bigger than it.
```
4. The less than (`<`) operator. This operator is for checking if a numerical value is smaller than another numerical value.
```lua
print(1 < 0) -- Outputs: false

print(0 < 1) -- Outputs: true

print(1 < 1) -- Outputs: false
-- This is because 1 and 1 are the same number and can't be smaller than it.
```
5. The greater than or equal to (`>=`) operator. This operator is for checking if a numerical value is bigger or the same as another numerical value.
```lua
print(1 >= 0) -- Outputs: true

print(0 >= 1) -- Outputs: false

print(1 >= 1) -- Outputs: true
-- This is because this operator also checks if they're the same.
```
6. The less than or equal to (`<=`) operator. This operator is for checking if a numerical value is smaller or the same as another numerical value.
```lua
print(1 <= 0) -- Outputs: false

print(0 <= 1) -- Outputs: true

print(1 <= 1) -- Outputs: true
```
### 3. Arithmetic Operators
Arithmetic operators are for doing math with numerical values.
<br>1. The addition (`+`) operator. This is for adding two numbers together.
```lua
print(1 + 0) -- Outputs: 1

print(1 + 1) -- Outputs: 2

print(10 + 5) -- Outputs: 15
```
2. The subtraction (`-`) operator. This is for subtracting a number.
```lua
print(1 - 0) -- Outputs: 1

print(1 - 1) -- Outputs: 0

print(10 - 5) -- Outputs: 5
```
3. The multiplication (`*`) operator. This is for multiplying a number.
```lua
print(1 * 0) -- Outputs: 0

print(1 * 1) -- Outputs: 1

print(10 * 5) -- Outputs: 50
```
4. The division (`/`) operator. This is for dividing a number.
```lua
print(1 / 0) -- Outputs: inf

print(1 / 1) -- Outputs: 1

print(10 / 5) -- Outputs: 2
```
5. The floor division (`//`) operator. This is for dividing a number, with the division result having a rounding applied.
```lua
print(1 // 0) -- Outputs: inf

print(1 // 1) -- Outputs: 1

print(10 // 5) -- Outputs: 2
```
6. The exponential (`^`) operator. This is power, and it is for repeated multiplication.
```lua
print(1 ^ 0) -- Outputs: 1

print(1 ^ 1) -- Outputs: 1

print(10 ^ 5) -- Outputs: 100000
```
7. The modulus (`%`) operator. This is for obtaining the result of the integer division.
```lua
print(1 % 0) -- Outputs: nan

print(1 % 1) -- Outputs: 0

print(10 % 5) -- Outputs: 0
```
8. The unary negation (`-`) operator. When placed before a number, it will turn the number into its negative version.
```lua
print(-1 + -0) -- Outputs: -1

print(-1 + -1) -- Outputs: -2

print(-10 - 5) -- Outputs: -15
```
## 4. Compound Assignment Operators
Compound assignment operators allow you to use another operator, usually arithmetic, and apply it to a variable's value.
1. The addition (`+=`) compound assignment operator.
```lua
local Number = 1
Number += 1

print(Number) -- Outputs: 2
```
This is also equivalent to:
```lua
local Number = 1
Number = Number + 1

print(Number) -- Outputs: 2
```
Just a more efficient way to write it.
<br>2. The subtraction (`-=`) compound assignment operator.
```lua
local Number = 1
Number -= 1

print(Number) -- Outputs: 0
```
3. The multiplication (`*=`) compound assignment operator.
```lua
local Number = 1
Number *= 1

print(Number) -- Outputs: 1
```
4. The division (`/=`) compound assignment operator.
```lua
local Number = 1
Number /= 1

print(Number) -- Outputs: 1
```
5. The Floor Division (`//=`) operator.
```lua
local Number = 1
Number //= 1

print(Number) -- Outputs: 1
```
6. The modulus (`%=`) compound assignment operator.
```lua
local Number = 1
Number %= 1

print(Number) -- Outputs: 0
```
7. The exponentiation (`^=`) compound assignment operator.
```lua
local Number = 1
Number ^= 1

print(Number) -- Outputs: 1
```
8. The concatenation (`..=`) compound assignment operator. This is for concatenating (combining) two strings and applying that result to a variable.
```lua
local String = "Hello"
String ..= " world!"

print(String) -- Outputs: Hello world!
```
## Closing Statement
Thank you for reading this course, and good luck on your scripting journey. 

For any issues, questions, or concerns, you can join the [Roblox Studio Community Discord Server](https://discord.gg/robloxstudio) or the [HiddenDevs Discord Server](https://discord.gg/hd) and make use of their #scripting-help or #code-help discord channels.

If this course did not provide an understandable explanation, you can read or watch other sources, such as the [Roblox Documentation on Operators](https://create.roblox.com/docs/luau/operators#relational).
