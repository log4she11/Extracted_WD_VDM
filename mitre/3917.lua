-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3917.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if not l_0_0 then
  return mp.CLEAN
end
if isParentPackageManager(l_0_0.ppid) then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1078.003", "Persistence")
return mp.INFECTED

