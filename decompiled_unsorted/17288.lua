-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17288.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_0.ppid, "H")
;
(bm.add_action)("SmsAsyncScanEvent", 5000)
return mp.INFECTED

