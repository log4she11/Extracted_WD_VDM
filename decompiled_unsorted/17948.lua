-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17948.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
;
(MpCommon.RequestSmsOnProcess)(l_0_0.ppid, MpCommon.SMS_SCAN_MED)
;
(mp.AddDeferredBMAction)("SmsAsyncScanEvent", 3000)
return mp.INFECTED

