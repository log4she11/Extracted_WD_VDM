-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/338.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  local l_0_7 = (mp.bitand)(l_0_6.reason_ex, bm.RELATIONSHIP_INJECTION)
  if l_0_7 == bm.RELATIONSHIP_INJECTION then
    TrackPidAndTechniqueBM(l_0_6.ppid, "T1055.002", "processinjection_target_h")
    ;
    (bm.request_SMS)(l_0_6.ppid, "M")
    ;
    (bm.add_action)("SmsAsyncScanEvent", 1000)
  end
end
return mp.INFECTED

