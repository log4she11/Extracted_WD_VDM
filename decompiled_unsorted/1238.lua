-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1238.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
TrackPidAndTechnique(l_0_0, "sim_tool", "redcanary")
return mp.CLEAN

