-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2508.luac 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.find)(l_0_0.ProductName, "MacaulyMoDzs Private Skype Tool", 1, true) ~= nil or (string.find)(l_0_0.ProductName, "MacaulyMoDzs_Final_Skype_Tool", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

