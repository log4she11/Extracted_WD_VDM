-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21934.luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.PathToWin32Path)((bm.get_imagepath)())
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (bm.get_connection_string)()
if l_0_2 == nil then
  return mp.CLEAN
end
if l_0_2 == "" then
  return mp.CLEAN
end
local l_0_3 = tonumber((string.match)(l_0_2, "DestPort=(%d+);"))
if l_0_3 ~= 25 and l_0_3 ~= 465 and l_0_3 ~= 587 then
  return mp.CLEAN
end
local l_0_4, l_0_5, l_0_6 = l_0_1:match("(.+\\)([^\\]+)(%.%l%l%l)$")
if l_0_4 == nil then
  return mp.CLEAN
end
if l_0_5 == nil then
  return mp.CLEAN
end
if l_0_6 == nil or l_0_6 ~= ".exe" and l_0_6 ~= ".scr" then
  return mp.CLEAN
end
local l_0_7 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\SYSTEM32\\"))
local l_0_8 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\SYSWOW64\\"))
local l_0_9 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\"))
-- DECOMPILER ERROR at PC106: Unhandled construct in 'MakeBoolean' P3

if (l_0_7 and l_0_7 == l_0_4) or not l_0_8 or l_0_9 and l_0_9 == l_0_4 then
  return mp.INFECTED
end
local l_0_10, l_0_11, l_0_12 = l_0_1:match("(.+\\)(.+\\)([^\\]+%.%l%l%l)$")
if l_0_10 == nil or l_0_11 == nil then
  return mp.CLEAN
end
if l_0_11 ~= "temp\\" and l_0_11 ~= "temporary\\" and l_0_11 ~= "temporary files\\" then
  return mp.CLEAN
end
if l_0_10:find(l_0_9, 1, true) then
  return mp.INFECTED
end
local l_0_13 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%USERPROFILE%"))
if l_0_13 == nil then
  return mp.CLEAN
end
local l_0_14 = l_0_13:match("(%l:\\[^\\]+)\\.+")
if l_0_10:find(l_0_14, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

