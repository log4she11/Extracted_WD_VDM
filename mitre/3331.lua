-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3331.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0:sub(1, 8) == "\\device\\" then
  l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
end
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if IsKeyInRollingQueue("DroppedByPossibleRemotelyCreatedProc", l_0_0) then
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  if l_0_1 == nil then
    return mp.CLEAN
  end
  l_0_1 = (string.lower)(l_0_1)
  ;
  (mp.set_mpattribute)("Lua:Context/OpenAfterDroppedRemotely!" .. l_0_1)
  local l_0_2 = "cscript.exe|wscript.exe|mshta.exe|cmd.exe|powershell.exe|pwsh.exe|console.exe|bash.exe|dllhost.exe|rundll32.exe|regsvr32.exe|wmiprvse.exe|svchost.exe|wsmprovhost.exe|"
  if l_0_2:find(l_0_1) then
    (mp.set_mpattribute)("Lua:Context/OpenAfterDroppedRemotely!lolbin")
    ;
    (mp.set_mpattribute)("Lua:Context/OpenAfterDroppedRemotely!" .. l_0_1)
  end
  TrackPidAndTechnique("RTP", "T1570", "exec_remotedroppedscript_b")
  return mp.INFECTED
end
do
  return mp.CLEAN
end

