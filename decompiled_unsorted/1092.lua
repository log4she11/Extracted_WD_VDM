-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1092.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (string.lower)(l_0_1.image_path)
if l_0_2 == nil then
  return mp.CLEAN
end
if not l_0_2:find("\\wmiprvse.exe") then
  return mp.CLEAN
end
local l_0_3 = (mp.GetProcessCommandLine)(l_0_0)
if not l_0_3 or #l_0_3 <= 8 then
  return mp.CLEAN
end
if (string.find)(l_0_3, "/Q ", 1, true) and (string.find)(l_0_3, "/c ", 1, true) and not (string.find)(l_0_3, "/Q /D ", 1, true) and not (string.find)(l_0_3, "/Q /c netstat -anop TCP 1>", 1, true) and not (string.find)(l_0_3, "/U /Q ", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

