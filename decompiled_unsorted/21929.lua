-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21929.luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_0 = (MpCommon.PathToWin32Path)((bm.get_imagepath)())
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if not (string.find)(l_0_0, "c:\\", 1, true) then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\windows", 1, true) or (string.find)(l_0_0, "\\teams.exe", 1, true) or (string.find)(l_0_0, "game", 1, true) or (string.find)(l_0_0, "steam", 1, true) or (string.find)(l_0_0, "\\jackettconsole", 1, true) or (string.find)(l_0_0, "c:\\agent.exe", 1, true) or (string.find)(l_0_0, "torrent", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.QueryPersistContext)(l_0_0, "NewPECreatedNoCert")
if not l_0_1 then
  return mp.CLEAN
end
if (mp.IsKnownFriendlyFile)(l_0_0, true, false) == true then
  return mp.CLEAN
end
local l_0_2 = (sysio.GetFileLastWriteTime)(l_0_0)
if ((sysio.GetLastResult)()).Success and l_0_2 ~= 0 then
  l_0_2 = l_0_2 / 10000000 - 11644473600
  local l_0_3 = (MpCommon.GetCurrentTimeT)()
  if l_0_3 < l_0_2 or l_0_3 - (l_0_2) > 600 then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

