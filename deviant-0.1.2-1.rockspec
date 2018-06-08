-- This file was automatically generated for the LuaDist project.

package = "deviant"
 version = "0.1.2-1"
-- LuaDist source
source = {
  tag = "0.1.2-1",
  url = "git://github.com/LuaDist-testing/deviant.git"
}
-- Original source
--  source = {
--     url = "https://git.deviant.guru/luarocks/deviant/archive/v0.1.2-1.zip",
--     dir = "deviant",
--  }
 description = {
    summary = "A set of small useful functions extending lua's standard library",
    detailed = [[
        Lua module with a set of functions extending standard library:
        copying & merging tables, working with files.
    ]],
    homepage = "https://git.deviant.guru/luarocks/deviant",
    license = "GPLv3"
 }
 dependencies = {
    "lua >= 5.1"
 }
 build = {
    type = "builtin",
    modules = {
       deviant = "src/deviant.lua"
    }
 }