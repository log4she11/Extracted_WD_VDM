-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1682.luac 

-- params : ...
-- function num : 0
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
local l_0_0 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_0.ppid, "H")
;
(bm.add_action)("SmsAsyncScanEvent", 5000)
TrackPidAndTechniqueBM(l_0_0.ppid, "T1055.002", "processinjection_source")
return mp.INFECTED

