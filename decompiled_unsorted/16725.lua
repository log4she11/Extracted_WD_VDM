-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16725.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 and l_0_0.integrity_level < MpCommon.SECURITY_MANDATORY_HIGH_RID then
  return mp.INFECTED
end
return mp.CLEAN

