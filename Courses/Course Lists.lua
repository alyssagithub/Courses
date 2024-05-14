-- This file is just for managing what courses go in what order, don't mind it
local CoursesList = {
  -- Top = easiest to learn/understand
  "Variables", -- made
  "Tables", -- making
  "String Types", -- "string", 'string', [[string]], `string`
  "String Manipulation", -- concatenation, interpolation, string.format
  "Operators", -- and, or, ==, >=, etc
  "If Statements",
  "Print Debugging",
  "Functions",
  "Properties",
  "Data Types", -- cframes, vector3/2s, udim2s
  "Instances",
  "Attributes",
  "Loops", -- table & numerical for loop, while loop, repeat loop, function recursion
  "Ternary Operations", -- var and var2 or var3, if var then var2 else var3
  "Debounce",
  "Yielding", -- task.wait()
  "Threads",
  "RBXScriptSignals", -- :connect(), :once(), :wait(), connection:disconnect()
  "Protected Calls", -- pcall, xpcall, ypcall
  "Module Scripts",
  "Remotes & Bindables",
  "Raycasting",
  "Spatial Query", -- getpartsinpart
  "Type Checking", -- export type, type, normal usage
  "Metatables", -- self, methods, oop
  "Buffers", -- never learned, might not teach
}

local ServicesList = {
  -- Top = easiest to learn/understand
  "Debris",
  "Players",
  "TweenService",
  "CollectionService",
  "UserInputService",
  "ContextActionService",
  "RunService",
  "DataStoreService",
  "MarketplaceService",
  "MemoryStoreService", -- never learned, might not teach
  "HttpService",
  "EthnicityService",
}
