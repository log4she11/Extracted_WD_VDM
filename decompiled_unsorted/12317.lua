-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12317.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCPT:VirTool:JS/FunctionPacked.A") == false then
  return mp.INFECTED
end
return mp.CLEAN

