-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20656.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0.image_path
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((string.match)(l_0_1, "\\([^\\]+)$"))
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
if l_0_2 ~= "cmd.exe" then
  return mp.CLEAN
end
local l_0_3 = l_0_0.ppid
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (mp.GetParentProcInfo)(l_0_3)
if l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = l_0_4.image_path
if l_0_5 == nil then
  return mp.CLEAN
end
local l_0_6 = (string.lower)((string.match)(l_0_5, "\\([^\\]+)$"))
if l_0_6 == nil or l_0_6 == "" then
  return mp.CLEAN
end
if l_0_6 ~= "powershell.exe" then
  return mp.CLEAN
end
return mp.INFECTED

