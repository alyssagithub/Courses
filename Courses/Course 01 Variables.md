# Course #1: Variables
- Level: Beginner
- Sections: Local Variables, Global Variables, Shared Variables
- Minimum Requirement: Must be able to insert/create a script in Roblox Studio

A variable is essentially a name attached to a value, there are 3 baseline ways to define a variable which is what this course will be explaining.

**Note:** Before we get into scripting, in order to see the output messages caused by `print`, you will need to go into the "VIEW" tab in Roblox Studio (located around the top left), and then click on the "Output" button to enable the output.

## Word Contexts
- **Values** are [strings](https://create.roblox.com/docs/luau/strings) ("A String"), [numbers](https://create.roblox.com/docs/luau/numbers) (1234), [booleans](https://create.roblox.com/docs/luau/booleans) (true/false), [data types](https://create.roblox.com/docs/reference/engine/datatypes) and more.
- **Scopes** are defined [here](https://create.roblox.com/docs/luau/scope).
- **Define** (in programming) means to create a variable

## 1. Local Variables
A local variable is a variable that can only be accessed in the [scope](https://create.roblox.com/docs/luau/scope) it was defined in.
<br>It is most common, and best to use local variables instead of global & shared variables whenever possible, as they are faster and take up less memory.
<br>First, let's begin constructing a local variable, we'll start off with the `local` keyword
```lua
local
```
Next, we will need to give our local variable a name, lets do `MyFirstVariable` in this example
```lua
local MyFirstVariable
```
Then, we should add an `=` sign to begin assinging it a value.
```lua
local MyFirstVariable =
```
Now, we'll need to assign it a value, we'll use the string "Hello, world!" in this example
```lua
local MyFirstVariable = "Hello, world!"
```
And there we have it, our first variable. Let's use it in a print to see what we get from it.
```lua
local MyFirstVariable = "Hello, world!"
print(MyFirstVariable) -- Outputs: Hello, world!
```
We have now created & used our first variable, next up we'll learn how different scopes effect local variables.
First up, we'll create a [scope](https://create.roblox.com/docs/luau/scope) by using `do end`
```lua
do

end
```
Now that we have a new scope, lets use our previously created local variable inside it.
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
Now that we know our code works, let's place a print outside of the scope to show the effect of a local variable in a different scope.
```lua
do
    local MyFirstVariable = "Hello, world!"
    print(MyFirstVariable) -- Outputs: Hello, world!
end
print(MyFirstVariable) -- Outputs: nil
```
As you can see, when a variable is being accessed outside of the scope it was defined in, it will have no value, which is why it's `nil`.
The easiest way to know where a variable is located in a scope is to look at where the `end`s are placed, any code past any `end` will most likely be outside of that given scope.

A feature of all variables, not just local, is being able to define multiple at once using commas.
```lua
local MyFirstVariable, MySecondVariable = "Hello, world!", "This is the Second Variable!"
```
If we use these and print them both out, we can see the values we assigned to them.
```lua
-- Note that these variables are assigned seperately, but just done at once.
local MyFirstVariable, MySecondVariable = "Hello, world!", "This is the Second Variable!"
print(MyFirstVariable) -- Outputs: Hello, world!
print(MySecondVariable) -- Outputs: This is the Second Variable!
```
You should now be able to understand more about variables and local variables.
That will conclude the explanation on local variables, now moving onto the 2nd way to define a variable.
## 2. Global Variables
A global variable, unlike local variables, can be accessed outside of scopes.
To make a global variable you can simply follow the steps of a local variable, but without adding the `local` keyword before the name, for example:
```lua
MyFirstGlobal = "Hello, world!"
print(MyFirstGlobal) -- Outputs: Hello, world!
```
Now that you've made a global variable, lets try putting it inside a different scope like we did with the local variables.
```lua
do
    MyFirstGlobal = "Hello, world!"
    print(MyFirstGlobal) -- Outputs: Hello, world!
end
print(MyFirstGlobal) -- Outputs: Hello, world!
```
We have now successfully learned global variables, we will move onto our 3rd and final explanation.
## 3. Shared Variables
A shared variable is closest to the global variables, but you will be able to access them across 2 different scripts.
<br>There are 2 ways to access & create a shared variable, using `_G` and using `shared`, I will be showing you the first method, but if you'd like to try to use the second, you can simply replace all `_G` usage in the code with `shared`.

Let's create our first shared variable, we'll need 2 scripts to test this one properly so make sure you're prepared.

In our first script, we're going to want to use this code:
```lua
_G.MyFirstShared = "Hello, world!"
```
In our second script, we're going to want to use this code:
```lua
print(_G.MyFirstShared)
```
We have now successfully created a variable in one script, and used it in another.
Congratulations on your first step into scripting, here's a final task to ensure you can remember this information:
## Learning Task
Create & open a script in Roblox Studio, then create a `local` variable with a name of your choice, assign it's value to a string of your favorite word, don't forget to use quotation marks (`"`) to ensure it is a string.
<br>Now, with that local variable, use the `print` function like in the code examples, replacing `MyFirstVariable` with the variable name of your choice, and see if it prints.
<br>If it has printed, you have successfully completed this course and are ready to move onto the next, if it didn't print correctly, errored, or didn't run you may want to read this course again.

For any issues, questions, or concerns, feel free to join the [Roblox Studio Community Discord Server](https://discord.gg/robloxstudio) or the [HiddenDevs Discord Server](https://discord.gg/hd) and make use of their #scripting-help or #code-help discord channels.
<br>If this course did not provide an understandable explanation, feel free to read or watch other sources such as the [Roblox Documentation Variable Tutorial](https://create.roblox.com/docs/luau/variables) or [TheDevKing's Youtube Video on Variables](https://www.youtube.com/watch?v=0Dc2dCYoxxs).
