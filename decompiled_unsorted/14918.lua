-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14918.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:[FunctionPacked]") and (mp.get_mpattribute)("SCRIPT:base64") then
  return mp.INFECTED
end
return mp.CLEAN

