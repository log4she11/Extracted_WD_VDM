-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2268.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCRIPT:PythonImportBase64") and (mp.get_mpattribute)("SCRIPT:PythonImportZlib") and (mp.get_mpattributesubstring)("PACKED_WITH:[PyInsObj]") then
  return mp.INFECTED
end
return mp.CLEAN

