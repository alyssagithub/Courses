# Course #2: Operators
- Level: Beginner
- Sections: Logical Operators, Relational Operators, Arithmetic Operators, Compound Assignment Operators
- Minimum Requirement: Must Know [Variables](https://github.com/alyssagithub/Roblox-Scripting-School/blob/main/Courses/Course%2001%20Variables.md)
- Estimated Reading Time: ~0 Minutes

Operators are signs used to get, compare, or set a value.

## 1. Logical Operators
A logical operator is an operator that is used for boolean and truthy/falsey values.
<br>A truthy is any value that isnt `false` or `nil`, while a falsey is a value that is `false` or `nil`.
### Usage of `and`
Using `and` allows you to have a value given when a value is a truthy, if the value is a falsey it will give the initial value.
<br>Here's an example of using a truthy with `and`:
```lua
local Boolean = true
print(Boolean and "Hello") -- Outputs: Hello
```
Here's an example of using `false`, a falsey, with `and`:
```lua
local Boolean = false
print(Boolean and "Hello") -- Outputs: false
```
Here's an example of using `nil`, a falsey, with `and`:
```lua
local Nothing = nil
print(Nothing and "Hello") -- Outputs: nil
```
### Usage of `or`
Now that we know what `and` does, let's see how we can use `or` and how we can use it with `and`.
<br>You can use `or` to give a value when the initial value is a falsey, allowing it to be paired with `and`.
<br>Here's an example of using a truthy with `or`.
```lua
local Boolean = true
print(Boolean or "Hello") -- Outputs: true
```
Here's an example of using a falsey with `or`.
```lua
local Boolean = false
print(Boolean or "Hello") -- Outputs: Hello
```
Now, let's see how we can use this with `and`, first we'll start with a separated version to easily visualize how this works.
```lua
local Boolean = true
local Result = Boolean and "Hello" -- Has the value of "Hello"
print(Result or "Goodbye") -- Outputs: Hello
```
With a falsey:
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
Then, without any variable use.
```lua
print(false and "Hello" or "Goodbye") -- Outputs: Goodbye
```
Using `and` with `or` in a combination like this can be used as a ternary operation, which is used for checking a value and giving another value based off of that result.
### Usage of `not`
Using `not` allows you to have the opposite of a truthy or falsey. Note that both falseys, `nil` and `false` will give true, while all truthy values will give false, for example:
```lua
print(not true) -- Outputs: false

print(not false) -- Outputs: true

print(not "A String!") -- Outputs: false
-- This is because any value that isn't false or nil is considered a truthy.
```
## 2. Relational Operators
Relational operators are used for comparing two values to get a resulting boolean.
<br>First, we'll start with the Equal to (`==`) operator. This operator is for checking if a value is the same as another value.
```lua
print(true == false) -- Outputs: false

print(true == true) -- Outputs: true

print(false == false) -- Outputs: true

print(true == "true") -- Outputs: false

print("Hello" == "Hello") -- Outputs: true

print("Goodbye" == "Hello") -- Outputs: false
```
Second, we'll use the Not equal to (`~=`) operator. This operator is the opposite of the equal to operator, used for checking if a value isn't the same as another value.
```lua
print(true ~= false) -- Outputs: true

print(true ~= true) -- Outputs: false
```
As you can see, the boolean you get from the "Not equal to" operator will be the opposite of the "Equal to" operator.
<br>Third, we'll use the Greater than (`>`) operator. This operator is for checking if a numerical value is bigger than another numerical value.
```lua
print(1 > 0) -- Outputs: true

print(0 > 1) -- Outputs: false

print(1 > 1) -- Outputs: false
-- This is because 1 and 1 are the same number, and can't be bigger than it.
```
Fourth, we'll use the Less than (`<`) operator. This operator is for checking if a numerical value is smaller than another numerical value.
```lua
print(1 < 0) -- Outputs: false

print(0 < 1) -- Outputs: true

print(1 < 1) -- Outputs: false
-- This is because 1 and 1 are the same number, and can't be smaller than it.
```
Fifth, we'll use the Greater than or equal to (`>=`) operator. This operator is for checking if a numerical value is bigger or the same as another numerical value.
```lua
print(1 >= 0) -- Outputs: true

print(0 >= 1) -- Outputs: false

print(1 >= 1) -- Outputs: true
-- This is because this operator also checks if they're the same.
```
Sixth, we'll use the Less than or equal to (`<=`) operator. This operator is for checking if a numerical value is smaller or the same as another numerical value.
```lua
print(1 <= 0) -- Outputs: false

print(0 <= 1) -- Outputs: true

print(1 <= 1) -- Outputs: true
```
### 3. Arithmetic Operators
Arithmetic operators are used for doing math with numerical values.
<br>1. We'll start with the Addition (`+`) operator. This is used for adding two numbers together.
```lua
print(1 + 0) -- Outputs: 1

print(1 + 1) -- Outputs: 2

print(10 + 5) -- Outputs: 15
```
2. The Subtraction (`-`) operator. This is used for subtracting a number.
```lua
print(1 - 0) -- Outputs: 1

print(1 - 1) -- Outputs: 0

print(10 - 5) -- Outputs: 5
```lua
3. The Multiplication (`*`) operator. This is used for multiplying a number.
```lua
print(1 * 0) -- Outputs: 0

print(1 * 1) -- Outputs: 1

print(10 * 5) -- Outputs: 50
```lua
4. The Division (`/`) operator. This is used for dividing a number.
```lua
print(1 / 0) -- Outputs: inf

print(1 / 1) -- Outputs: 1

print(10 / 5) -- Outputs: 2
```
5. The Floor Division (`//`) operator. This is used for diving a number with the resulting having a flooring/rounding applied.
```lua
print(1 // 0) -- Outputs: inf

print(1 // 1) -- Outputs: 1

print(10 // 5) -- Outputs: 2
```
6. The Exponentian (`^`) operator. This is also known as Power, and is used for repeated multiplication.
```lua
print(1 ^ 0) -- Outputs: 1

print(1 ^ 1) -- Outputs: 1

print(10 ^ 5) -- Outputs: 100000
```
7. The Modulus (`%`) operator. This is for the remainder of the integer divison.
```lua
print(1 % 0) -- Outputs: nan

print(1 % 1) -- Outputs: 0

print(10 % 5) -- Outputs: 0
```
8. The Unary negation (`-`) operator. When placed before a number, it will turn a number into its negative version.
```lua
print(-1 + -0) -- Outputs: -1

print(-1 + -1) -- Outputs: -2

print(-10 - 5) -- Outputs: -15
```
## 4. Compound Assignment Operators
Compound assignment operators allow you to use another operator, usually arithmetic, and apply it with a variable's value.
1. The Addition (`+=`) operator.
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
<br>2. The Subtraction (`-=`) operator.
```lua
local Number = 1
Number -= 1

print(Number) -- Outputs: 0
```
3. The Multiplication (`*=`) operator.
```lua
local Number = 1
Number *= 1

print(Number) -- Outputs: 1
```
4. The Division (`/=`) operator.
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
6. The Modulus (`%=`) operator.
```lua
local Number = 1
Number %= 1

print(Number) -- Outputs: 0
```
7. The Exponentiation (`^=`) operator.
```lua
local Number = 1
Number ^= 1

print(Number) -- Outputs: 1
```
8. The Concatenation (`..=`) operator. This is used for concatenating (combining) two strings and applying that result to a variable.
```lua
local String = "Hello"
String ..= " world!"

print(String) -- Outputs: Hello world!
```
## Learning Task
None.
## Optimizations
None.
## Closing Statement
Thank you for reading this course, and good luck on your scripting journey. 

For any issues, questions, or concerns, you can join the [Roblox Studio Community Discord Server](https://discord.gg/robloxstudio) or the [HiddenDevs Discord Server](https://discord.gg/hd) and make use of their #scripting-help or #code-help discord channels.

If this course did not provide an understandable explanation, you can read or watch other sources, such as the [Roblox Documentation on Operators](https://create.roblox.com/docs/luau/operators#relational).
