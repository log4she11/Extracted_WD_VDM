-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3816.luac 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1027.002", "DefenseEvasion_Packing")
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED

