-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3956.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil and not isParentPackageManager(l_0_0.ppid, true) and (versioning.GetCloudBlockLevel)() >= 4 then
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1053.003", "Persistence")
  return mp.INFECTED
end
return mp.CLEAN

