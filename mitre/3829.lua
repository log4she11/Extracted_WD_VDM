-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3829.luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1059.004", "Execution")
TrackPidAndTechniqueBM("BM", "T1071.001", "CommandAndControl")
addChildrenAsThreat()
return mp.INFECTED

