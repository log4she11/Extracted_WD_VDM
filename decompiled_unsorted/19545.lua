-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19545.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (bm.get_current_process_startup_info)()
  if l_0_0.integrity_level == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
    local l_0_1 = (this_sigattrlog[1]).utf8p2
    if l_0_1 ~= nil and (string.len)(l_0_1) > 2 then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

