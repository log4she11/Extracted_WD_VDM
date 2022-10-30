-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4056.luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = (mp.GetParentProcInfo)(l_0_1.ppid)
if (bm.GetSignatureMatchDuration)() > 50000000 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1083", "Discovery_FileAndDirectoryDiscovery")
addRelatedProcess()
reportRelatedBmHits()
if l_0_2 ~= nil then
  if IsTacticObservedForPid(l_0_2.ppid, "CredentialAccess") or IsTacticObservedForPid(l_0_2.ppid, "Execution") then
    return mp.INFECTED
  else
    l_0_0 = GetTechniquesCountForPid(l_0_2.ppid)
    if l_0_0 > 1 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

