-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20870.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_3 = nil
  local l_0_4 = {[".js"] = true}
  for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_3)) do
    local l_0_5 = nil
    -- DECOMPILER ERROR at PC30: Confused about usage of register: R7 in 'UnsetPending'

    if (string.len)(R7_PC30) > 3 and (sysio.IsFileExists)(R7_PC30) and l_0_4[(string.sub)(R7_PC30, -3)] then
      (bm.add_related_file)(l_0_10)
      ;
      (mp.ReportLowfi)(l_0_10, 3903271666)
    end
  end
  return mp.INFECTED
end

