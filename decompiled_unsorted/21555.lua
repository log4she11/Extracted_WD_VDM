-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21555.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = (string.match)(l_0_1, "trustedinstaller\\sbinpath\\s*=([^&]+)")
if (string.find)(l_0_2, "\\servicing\\trustedinstaller.exe", 1, true) then
  return mp.CLEAN
end
local l_0_3 = (mp.GetParentProcInfo)()
if l_0_3 ~= nil then
  local l_0_4 = l_0_3.image_path
  if l_0_4 == "" or l_0_4 == nil then
    return mp.CLEAN
  end
  l_0_4 = (string.lower)(l_0_4)
  if (string.find)(l_0_4, ":\\lenovoquickfix\\", 1, true) then
    return mp.CLEAN
  end
  local l_0_5 = l_0_3.ppid
  if l_0_5 == "" or l_0_5 == nil then
    return mp.CLEAN
  end
  local l_0_6 = (mp.GetProcessCommandLine)(l_0_5)
  if l_0_6 == "" or l_0_6 == nil then
    return mp.CLEAN
  end
  l_0_6 = (string.lower)(l_0_6)
  if (string.find)(l_0_6, ":\\lenovoquickfix\\", 1, true) then
    return mp.CLEAN
  end
  l_0_2 = (string.match)(l_0_6, "trustedinstaller\\sbinpath\\s*=([^&]+)")
  if (string.find)(l_0_2, "\\servicing\\trustedinstaller.exe", 1, true) then
    return mp.CLEAN
  end
end
do
  return mp.LOWFI
end

