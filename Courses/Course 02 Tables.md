# Course #2: Tables
- Level: Beginner
- Sections: Arrays, Dictionaries, Mixed, and Length
- Minimum Requirement: Must Know [Variables](https://github.com/alyssagithub/Roblox-Scripting-School/blob/main/Courses/Course%2001%20Variables.md)
- Estimated Reading Time: ~6 Minutes

A table is essentially a value that allows you to store other values, similar to how variables are. This course will teach you how to construct and use tables.

## Word Definitions
- **Indices:** plural of index; indexes.
- **Indexing:** To get the value of an index from a table.

## 1. Arrays
An array is a table that has numbered indices, such as 1, 2, 3, 4, etc.
<br>We will start by constructing an empty table inside a variable.
```lua
local MyFirstTable = {}
```
Once we've done that, we will give it an index. First, we'll start with `1` to ensure it's an array.
```lua
--                   {[Index] = Value}
local MyFirstTable = {[1] = "Hello, world!"}
```
Now, we're going to indent the table so it's easier to read the contents of it.
```lua
local MyFirstTable = {
    -- [Index] = Value
    [1] = "Hello, world!"
}
```
We use brackets (`[]`) around the index because it's a number, as numbers require it.
<br>Next, we'll want to retrieve the value of the first index from our array.
```lua
local MyFirstTable = {
    [1] = "Hello, world!"
}

local FirstIndexValue = MyFirstTable[1]
```
Now that we have the value of the first index, let's print it out.
```lua
local MyFirstTable = {
    [1] = "Hello, world!"
}

local FirstIndexValue = MyFirstTable[1]
print(FirstIndexValue) -- Outputs: Hello, world!
```
Now that we know how to access the value, let's change it.
```lua
local MyFirstTable = {
    [1] = "Hello, world!"
}

MyFirstTable[1] = "New value!"
local FirstIndexValue = MyFirstTable[1]
print(FirstIndexValue) -- Outputs: New value!
```
A common mistake in manipulating a table's value is changing a variable that contains the table's value. Here's an example of what not to do.
```lua
local MyFirstTable = {
    [1] = "Hello, world!"
}

MyFirstTable[1] = "New value!" -- Good ✅

local FirstIndexValue = MyFirstTable[1]
FirstIndexValue = "New value!" -- Bad ❌: This will only change our FirstIndexValue variable, not the actual index inside the MyFirstTable.
```
Now that we're knowledgeable about how to change values, let's add a second index.
```lua
local MyFirstTable = {
    [1] = "Hello, world!",
    [2] = "Goodbye, world!"
}

local FirstIndexValue = MyFirstTable[1]
print(FirstIndexValue) -- Outputs: Hello, world!

local SecondIndexValue = MyFirstTable[2]
print(SecondIndexValue) -- Goodbye, world!
```
As you can see, before adding the second index, we placed a comma after the first index's value, as this is how we separate the indexes. Forgetting to add a comma is a common mistake, so ensure you don't forget.
<br>Arrays require the indices to be ordered, so there can't be gaps like this:
```lua
local MyFirstTable = {
    [1] = "Hello, world!",
    [3] = "Goodbye, world!" -- Skipped the number 2.
}
```
This makes the third index no longer valid and therefore not part of the array. This will make the array appear as if there is only one index when used, but you will still be able to get the value from the third index when indexing the table.
<br>Now that we know the essentials of arrays, let's move on to dictionaries.
## 2. Dictionaries
A dictionary is a table that has value-based indices, unlike arrays. This means that you can have any value as an index, such as a string, number, boolean, or data type.
<br>Let's first make an index on an empty table. We'll use the string `"Apple"`.
```lua
local MyFirstTable = {
    ["Apple"] = "An apple!"
}
```
Now, let's retrieve the value from the dictionary.
```lua
local MyFirstTable = {
    ["Apple"] = "An apple!"
}

local Apple = MyFirstTable["Apple"]
```
Now that we have the value, let's print it out.
```lua
local MyFirstTable = {
    ["Apple"] = "An apple!"
}

local Apple = MyFirstTable["Apple"]
print(Apple) -- Outputs: An apple!
```
And that is the difference between arrays and dictionaries. Let's look at other ways to use indexes.
<br>First, we'll see another way to write out an index for dictionaries. You won't need to use quotes to make it a string or brackets to know it's an index.
```lua
local MyFirstTable = {
    Apple = "An apple!"
}
```
Now that we know this, let's make sure we know what indexes work and how we can use those that don't.
```lua
local MyFirstTable = {
    Apple = "An apple!", -- Good ✅
    ["Apple"] = "An apple!", -- Good ✅
    Apple Fruit = "An apple!", -- Bad ❌: You can't have white spaces in an index name without using a string and brackets.
    ["Apple Fruit"] = "An apple!", -- Good ✅
    🍎 = "An apple!", -- Bad ❌: You can't use non-UTF8 characters in an index name without using a string and brackets.
    ["🍎"] = "An apple!" -- Good ✅
}
```
Now that we know what we can make our indexes with, let's see other ways to access their values.
```lua
local MyFirstTable = {
    Apple = "An apple!"
}

local Apple = MyFirstTable.Apple
```
Using a dot (`.`), we can access the value of the `Apple` index.
<br>One thing about using a dot, though, is that it cannot access indexes that wouldn't qualify as a variable name. This is where the use of gaining an index's value through a string with brackets comes in.
<br>Let's see the valid ways to access certain indexes.
```lua
local MyFirstTable = {
    Apple = "An apple!",
    ["Apple Fruit"] = "An apple!",
    ["🍎"] = "An apple!"
}

local Apple = MyFirstTable.Apple -- Good ✅
local Apple = MyFirstTable["Apple"] -- Good ✅

local AppleFruit = MyFirstTable.Apple Fruit -- Bad ❌: This is a case where we have to use a string in brackets.
local AppleFruit = MyFirstTable["Apple Fruit"] -- Good ✅

local AppleEmoji = MyFirstTable.🍎 -- Bad ❌: This is a case where we have to use a string in brackets.
local AppleEmoji = MyFirstTable["🍎"] -- Good ✅
```
Now that we can confidently use tables, let's see what mixed tables are.
## 3. Mixed
Mixed tables are, as you can guess, a mix between arrays and dictionaries. It will have both numbered indices in proper order, while also having value-based indices.
<br>Here's an example of what a mixed table could look like:
```lua
local MyFirstTable = {
    [1] = "Hello, world!",
    [2] = "Goodbye, world!",
    Apple = "An apple!"
}
```
## 4. Length
To get the length of a table, you can use the `#` operator before the table. Please note that, if used with a dictionary, this will be 0, as this only works for arrays.
```lua
local MyFirstTable = {
    [1] = "Hello, world!",
    [2] = "Goodbye, world!"
}

local Length = #MyFirstTable
print(Length) -- Outputs: 2
```
<br>That will conclude the explanations of this course. There is a learning task below to ensure you process and understand this information.
## Learning Task
Let's create an array.
1. Create and open a script in Roblox Studio.
2. Create a (local) variable.
3. Make the variable's value start with an opening curly brace (`{`).
4. Add an ending curly brace (`}`).
5. Within the two curly braces, add the index `1` while using brackets. Should appear as `[1]`.
6. Using an `=` sign, make the index's value a string such as "pizza."
7. Indexing the table, print out the first index value.
8. If it prints, you have completed this course and are ready to move on to the next. If it didn't print correctly, had an error, or didn't run, try reading this course again.

Thank you for reading this course, and good luck on your scripting journey. 

For any issues, questions, or concerns, you can join the [Roblox Studio Community Discord Server](https://discord.gg/robloxstudio) or the [HiddenDevs Discord Server](https://discord.gg/hd) and make use of their #scripting-help or #code-help discord channels.

If this course did not provide an understandable explanation, you can read or watch other sources, such as the [Roblox Documentation on Tables](https://create.roblox.com/docs/luau/tables) or [TheDevKing's YouTube Video on Tables](https://www.youtube.com/watch?v=1xuECUHqxf8).
