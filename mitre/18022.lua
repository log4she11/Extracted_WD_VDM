-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18022.luac 

-- params : ...
-- function num : 0
sms_untrusted_process()
pcall(add_parents, "-1", 5)
TrackPidAndTechnique("BM", "T1003.001", "credentialdumping", 86400)
return mp.INFECTED

