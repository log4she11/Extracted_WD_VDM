-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/119.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if (string.find)(l_0_0, "manage bde", 1, true) or (string.find)(l_0_0, "hthd_psp script", 1, true) or (string.find)(l_0_0, "ukmc", 1, true) or (string.find)(l_0_0, "configmgr", 1, true) or (string.find)(l_0_0, "extraskriver", 1, true) or (string.find)(l_0_0, "automatic-device-join", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

