# Course #1: Variables
- Level: Beginner
- Sections: Local Variables, Global Variables, and Shared Variables
- Minimum Requirement: Must be able to insert a script in Roblox Studio
- Average Reading Time: ~4 Minutes

A variable is essentially a name attached to a value. There are three baseline ways to define a variable, which is what this course will be explaining.

**Note:** Before we get into scripting, to see the output messages caused by `print`, you will need to go into the "VIEW" tab in Roblox Studio (located around the top left) and then click on the "Output" button to enable the output.

## Word Contexts
- **Values** are [strings](https://create.roblox.com/docs/luau/strings) ("A String"), [numbers](https://create.roblox.com/docs/luau/numbers) (1234), [booleans](https://create.roblox.com/docs/luau/booleans) (true/false), [data types](https://create.roblox.com/docs/reference/engine/datatypes) and more.
- **Scopes** are defined [here](https://create.roblox.com/docs/luau/scope).
- **Define** (in programming) means to create a variable.

## 1. Local Variables
A local variable is a variable that can only be accessed in the [scope](https://create.roblox.com/docs/luau/scope) it was defined in.
<br>It is most common and best to use local variables instead of global and shared variables whenever possible, as they are faster and take up less memory.
<br>First, let's begin constructing a local variable. We'll start with the `local` keyword.
```lua
local
```
Next, we will need to give our local variable a name. Let's do `MyFirstVariable` in this example.
```lua
local MyFirstVariable
```
Then, we should add an `=` sign to begin assigning it a value.
```lua
local MyFirstVariable =
```
Now, we'll need to assign it a value. We'll use the string "Hello, world!" in this example.
```lua
local MyFirstVariable = "Hello, world!"
```
And there we have it—our first variable. Let's use it in print to see what we get from it.
```lua
local MyFirstVariable = "Hello, world!"
print(MyFirstVariable) -- Outputs: Hello, world!
```
We have now created and used our first variable. Next up, we'll learn how different scopes affect local variables.
First up, we'll create a [scope](https://create.roblox.com/docs/luau/scope) by using `do end`
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
Now that we know that our code works, let's place a print outside the scope to show the effect of a local variable in a different scope.
```lua
do
    local MyFirstVariable = "Hello, world!"
    print(MyFirstVariable) -- Outputs: Hello, world!
end
print(MyFirstVariable) -- Outputs: nil
```
As you can see, when a variable is accessed outside the scope it was defined in, it will have no value, which is why it's `nil`.
The easiest way to know where a variable is located in a scope is to look at where the ends are placed; any code past any `end` will most likely be outside that given scope.

A feature of all variables, not just local, is being able to define multiple variables at once using commas.
```lua
local MyFirstVariable, MySecondVariable = "Hello, world!", "This is the second variable!"
```
If we use these and print them both out, we can see the values we assigned to them.
```lua
-- Note that these variables are assigned separately but are just done at once.
local MyFirstVariable, MySecondVariable = "Hello, world!", "This is the second variable!"
print(MyFirstVariable) -- Outputs: Hello, world!
print(MySecondVariable) -- Outputs: This is the second variable!
```
You should now be able to understand more about variables and local variables.
That will conclude the explanation of local variables. Now we are moving on to the second way to define a variable.
## 2. Global Variables
A global variable, unlike local variables, can be accessed outside of scopes.
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
A shared variable is closest to the global variables, but you will be able to access them across two different scripts.
<br>There are two ways to access and create a shared variable: using `_G` and using `shared`. I will be showing you the first method, but if you'd like to try to use the second, you can simply replace all `_G` usage in the code with `shared`.

Let's create our first shared variable. We'll need two scripts to test this one properly, so make sure you're prepared.

In our first script, we're going to want to use this code:
```lua
_G.MyFirstShared = "Hello, world!"
```
In our second script, we're going to want to use this code:
```lua
print(_G.MyFirstShared)
```
We have now successfully created a variable in one script and used it in another.
Congratulations on your first step into scripting! Here's a final task to ensure you can remember this information:
## Learning Task
Create and open a script in Roblox Studio, then create a `local` variable with a name of your choice, assign its value to a string of your favorite word, and don't forget to use quotation marks (`"`) to ensure it is a string.
<br>Now, with that local variable, use the `print` function like in the code examples, replacing `MyFirstVariable` with the variable name of your choice, and see if it prints.
<br>If it has been printed, you have completed this course and are ready to move on to the next. If it didn't print correctly, had an error, or didn't run, you may want to read this course again.

For any issues, questions, or concerns, feel free to join the [Roblox Studio Community Discord Server](https://discord.gg/robloxstudio) or the [HiddenDevs Discord Server](https://discord.gg/hd) and make use of their #scripting-help or #code-help discord channels.
<br>If this course did not provide an understandable explanation, feel free to read or watch other sources, such as the [Roblox Documentation Variable Tutorial](https://create.roblox.com/docs/luau/variables) or [TheDevKing's YouTube Video on Variables](https://www.youtube.com/watch?v=0Dc2dCYoxxs).
