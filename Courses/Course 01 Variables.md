# Course #1: Variables
- Level: Beginner
- Sections: Local Variables, Global Variables, and Shared Variables
- Minimum Requirement: Must be able to insert a script in Roblox Studio
- Estimated Reading Time: ~6 Minutes

A variable is essentially a name attached to a value. There are three baseline ways to define a variable, which is what this course will be explaining.

**Note:** Before we learn about variables, to see the output messages caused by `print`, you will need to go into the "VIEW" tab in Roblox Studio (located around the top left) and then click on the "Output" button to enable the output.

## Word Contexts
- **Values** are [strings](https://create.roblox.com/docs/luau/strings) ("A String"), [numbers](https://create.roblox.com/docs/luau/numbers) (1234), [booleans](https://create.roblox.com/docs/luau/booleans) (true/false), [data types](https://create.roblox.com/docs/reference/engine/datatypes) and more.
- **Define** (in programming) means to create a variable.
- **Compile** refers to the process of the system that handles code running.

## 1. Local Variables
A local variable is a variable that is only available in the [scope](https://create.roblox.com/docs/luau/scope) it's defined in.
<br>It is the most common and best to use local variables instead of global and shared variables unless you're unable to, as they are faster and take up less memory.
### Creation
First, let's construct a local variable. We'll start with the `local` keyword.
```lua
local
```
Next, we will need to give our local variable a name. Let's do `MyFirstVariable` in this example.
```lua
local MyFirstVariable
```
Let's make sure we know what names are appropriate for variables and what names are not.
```lua
-- Note: Using two hyphens (--) before text will create a comment, which will not compile when the code is running.
local MyFirstVariable -- Good ✅
local _MyFirstVariable -- Good ✅
local 1MyFirstVariable -- Bad ❌: You can't have numbers at the start of a variable name.
local 🔥MyFirstVariable -- Bad ❌: You can't have non-UTF8 characters in a variable name.
local MyFirstVariable1234 -- Good ✅
local MyFirst Variable -- Bad ❌: You can't have a whitespace in a variable name.
local if -- Bad ❌: You can't have a variable name be a syntax keyword.
-- Note: The easiest way to tell if a word is a keyword is by seeing if its color differs from other variable names.
```
Note: Variable names are case-sensitive, and as such, if you create a variable name with `MyFirstVariable`, but access it with `myFIRSTvariable`, it will give you a different variable's value, or `nil` if there isn't a variable with that name.

Now that we have a general idea of what variable names are good, and which are bad, let's continue with the course.
<br>To begin assigning a value, we'll need to use the `=` sign.
```lua
local MyFirstVariable =
```
Now, we'll need to assign it a value. We'll use the string `"Hello, world!"` in this example.
```lua
local MyFirstVariable = "Hello, world!"
```
And there we have it—our first variable. Let's print it to see what we get from it.
```lua
local MyFirstVariable = "Hello, world!"
print(MyFirstVariable) -- Outputs: Hello, world!
```
We have now created and used our first variable. Let's try to change its value now.
We can do this by simply using the variable name, the `=` sign, and then the new value, like we did when we defined them.
```lua
local MyFirstVariable = "Hello, world!"
print(MyFirstVariable)  -- Outputs: Hello, world!

MyFirstVariable = "Goodbye, world!"
print(MyFirstVariable)  -- Outputs: Goodbye, world!
```
You should note that setting a local variable's value like this will not turn it into a global variable unless you set it outside the scope, which would count as defining it.
<br>Also, if you place a `local` before changing the variable, it will count as re-defining the variable, so it sometimes may give the same results, but it won't be the same thing.
```lua
local MyFirstVariable = "Hello, world!"
print(MyFirstVariable) -- Outputs: Hello, world!

MyFirstVariable = "Goodbye, world!" -- Good ✅
print(MyFirstVariable) -- Outputs: Goodbye, world!

local MyFirstVariable = "Goodbye, world!" -- Bad ❌
print(MyFirstVariable) -- Outputs: Goodbye, world!
```
Now that we understand local variables a bit more, let's get started with understanding how local variables act under different scopes.
### Scopes
First up, we'll create a [scope](https://create.roblox.com/docs/luau/scope).
```lua
do

end
```
Now that we have a new scope, let's use our previously created local variable inside it.
```lua
do
    local MyFirstVariable = "Hello, world!"
end
```
Once that's done, we'll next print the value to ensure it gives us what we want.
```lua
do
    local MyFirstVariable = "Hello, world!"
    print(MyFirstVariable) -- Outputs: Hello, world!
end
```
Now that we know that our code works, let's place a print outside the scope to show the effect of a local variable on a different scope.
```lua
do
    local MyFirstVariable = "Hello, world!"
    print(MyFirstVariable) -- Outputs: Hello, world!
end
print(MyFirstVariable) -- Outputs: nil
```
When accessed outside of its scope, a variable will have no value and is therefore `nil`.
<br>To determine a variable's location in the scope, look for the position of endings, such as `end` or `until`. Code following these endings is usually outside the specified scope.

A feature of all variables, not just local, is being able to define multiple variables at once using commas.
```lua
local MyFirstVariable, MySecondVariable = "Hello, world!", "This is the second variable!"
```
If we use these and print them both out, we can see the values we assigned to them.
```lua
-- Note that these variables get assigned separately but are just done at once.
local MyFirstVariable, MySecondVariable = "Hello, world!", "This is the second variable!"
print(MyFirstVariable) -- Outputs: Hello, world!
print(MySecondVariable) -- Outputs: This is the second variable!
```
You should now be able to understand more about variables and local variables.
That will conclude the explanation of local variables. Now we are moving on to the second way to define a variable.
## 2. Global Variables
A global variable, unlike local variables, can get accessed outside of scopes.
To make a global variable, you can simply follow the steps of a local variable, but without adding the `local` keyword before the name, for example:
```lua
MyFirstGlobal = "Hello, world!"
print(MyFirstGlobal) -- Outputs: Hello, world!
```
Now that you've made a global variable, let's try putting it inside a different scope, like we did with the local variables.
```lua
do
    MyFirstGlobal = "Hello, world!"
    print(MyFirstGlobal) -- Outputs: Hello, world!
end
print(MyFirstGlobal) -- Outputs: Hello, world!
```
We have now successfully learned global variables; we will move on to our third and final explanation.
## 3. Shared Variables
A shared variable is closest to the global variables, but you can access them across two different scripts.
<br>There are two ways to access and create a shared variable: using `_G` and using `shared`. I will show you the first method, but if you'd like to use the second, you can simply replace all `_G` usage in the code with `shared`.

Let's create our first shared variable. We'll need two scripts to test this one properly, so make sure you're prepared.

In our first script, we're going to want to use this code:
```lua
_G.MyFirstShared = "Hello, world!"
```
In our second script, we're going to want to use this code:
```lua
print(_G.MyFirstShared)
```
We have now created a shared variable in one script and used it in another.
<br>Congratulations on your first step into scripting! Here's a final task to ensure you can remember this information:
## Learning Task
Let's create a variable.
1. Create and open a script in Roblox Studio.
2. Create a `local` variable with the name of your choice.
3. Assign the variable you created's value to a string of your favorite word, such as "pizza." Don't forget to use quotation marks (`"`) to ensure it is a string.
4. Use the `print` function like in the code examples, replacing `MyFirstVariable` with the name you gave the variable, and then see if it prints in the output.
5. If it has printed, you have completed this course and are ready to move on to the next. If it didn't print correctly, had an error, or didn't run, try reading this course again.

Thank you for reading this course, and good luck on your scripting journey. 

For any issues, questions, or concerns, you can join the [Roblox Studio Community Discord Server](https://discord.gg/robloxstudio) or the [HiddenDevs Discord Server](https://discord.gg/hd) and make use of their #scripting-help or #code-help discord channels.

If this course did not provide an understandable explanation, you can read or watch other sources, such as the [Roblox Documentation on Variables](https://create.roblox.com/docs/luau/variables) or [TheDevKing's YouTube Video on Variables](https://www.youtube.com/watch?v=0Dc2dCYoxxs).
