-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14231.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:IsVB6") and peattributes.isexe == true then
  return mp.INFECTED
end
return mp.CLEAN

