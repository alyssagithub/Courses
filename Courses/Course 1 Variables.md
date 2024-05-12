# Course #1: Variables
- Level: Beginner
- Sections: Local Variables, Global Variables, Shared Variables
- Minimum Requirement: Must be able to insert/create a script in Roblox Studio

A variable is essentially a name attached to a value, there are 3 baseline ways to define a variable which is what this course will be explaining.

**Note:** Before we get into scripting, in order to see the output messages caused by `print`, you will need to go into the "VIEW" tab in Roblox Studio (located around the top left), and then click on the "Output" button to enable the output.

## 1. Local Variables
[comment]: <> (TODO: provide a better explanation on "scopes")
A local variable is a variable that can only be accessed in the scope it was defined in, for example.
If we make use of `do end`, we can create a new scope, as such:
```lua
do

end
```
Now that we have a new scope, lets create a new local variable inside of it.
```lua
do
    local MyFirstVariable = "Hello, world!"
end
```
That is how you first define a local variable, now we will use it through the `print` function to get the value associated with the variable:
```lua
do
    local MyFirstVariable = "Hello, world!"
    print(MyFirstVariable) -- Outputs: Hello, world!
end
```
We have now successfully created our first local variable, now to show the effect of making use of `local`:
```lua
do
    local MyFirstVariable = "Hello, world!"
    print(MyFirstVariable) -- Outputs: Hello, world!
end
print(MyFirstVariable) -- Outputs: nil
```
As you can see, when a variable is being accessed outside of the scope it was defined in, it will have no value, aka being `nil`.
The easiest way to know where a variable is located in a scope is to look at where the `end`s are placed, any code past any `end` will most likely be outside of that given scope.
Now, to showcase another feature of local variables, you cannot access them before they are defined.
```lua
print(MyFirstVariable) -- Outputs: nil
local MyFirstVariable = "Hello, world!"
print(MyFirstVariable) -- Outputs: Hello, world!
```
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
There are 2 ways to access & create a shared variable, using `_G` and using `shared`, I will be showing you the first method, but if you'd like to try to use the second, you can simply replace all `_G` usage in the code with `shared`.
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
Create & Open a script in Roblox Studio, then create a `local` variable with a name of your choice, assign it's value to a string of your favorite word, don't forget to use quotation marks (`"`) to ensure it is a string.
Now, with that local variable, use the `print` function like in the code examples, replacing `MyFirstVariable` with the variable name of your choice, and see if it prints.
If it has printed, you have successfully completed this course and are ready to move onto the next, if it didn't print correctly, errored, or didn't run you may want to read this course again.

For any issues, questions, or concerns, feel free to join the [Roblox Studio Community Discord Server](https://discord.gg/robloxstudio) or the [HiddenDevs Discord Server](https://discord.gg/hd) and make use of their #scripting-help or #code-help discord channels.
If this course did not provide an understandable explanation, feel free to read or watch other sources such as the [Roblox Documentation Variable Tutorial](https://create.roblox.com/docs/luau/variables) or [TheDevKing's Youtube Video on Variables](https://www.youtube.com/watch?v=0Dc2dCYoxxs).
