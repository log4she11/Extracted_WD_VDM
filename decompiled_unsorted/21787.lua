-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21787.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_connection_string)()
local l_0_1 = (bm.get_imagepath)()
local l_0_2 = ""
if l_0_1 == nil then
  return mp.CLEAN
end
if l_0_1 == "" then
  return mp.CLEAN
end
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0 == "" then
  return mp.CLEAN
end
l_0_2 = (string.lower)(l_0_1)
local l_0_3 = tonumber((string.match)(l_0_0, "DestPort=(%d+);"))
if l_0_3 == 25 or l_0_3 == 465 or l_0_3 == 587 then
  if l_0_2:find("explorer.exe") or l_0_2:find("svchost.exe") or l_0_2:find("cmd.exe") or l_0_2:find("calc.exe") or l_0_2:find("notepad.exe") then
    return mp.INFECTED
  end
  if l_0_2:find("mrt.exe") or l_0_2:find("msmpeng.exe") or l_0_2:find("services.exe") or l_0_2:find("smss.exe") or l_0_2:find("winlogon.exe") then
    return mp.INFECTED
  end
  if l_0_2:find("wuauclt.exe") or l_0_2:find("wininit.exe") or l_0_2:find("lsass.exe") or l_0_2:find("taskhost.exe") or l_0_2:find("rundll32.exe") then
    return mp.INFECTED
  end
end
return mp.CLEAN

