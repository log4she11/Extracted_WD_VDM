-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/976.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.ContextualExpandEnvironmentVariables)("%comspec%")
local l_0_1 = (mp.ContextualExpandEnvironmentVariables)("%windir%")
if l_0_0 ~= nil and l_0_1 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  l_0_1 = (string.lower)(l_0_1)
  if (string.find)(l_0_0, l_0_1, 1, true) == nil then
    return mp.INFECTED
  end
end
return mp.CLEAN

