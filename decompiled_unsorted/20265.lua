-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20265.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = nil
  if l_0_3 == nil or (string.find)((mp.ContextualExpandEnvironmentVariables)(l_0_0), "\\windows\\system32\\", 1, true) == nil or (mp.IsKnownFriendlyFile)((mp.ContextualExpandEnvironmentVariables)(l_0_0), true, false) then
    return mp.CLEAN
  end
  ;
  (bm.add_threat_file)((mp.ContextualExpandEnvironmentVariables)(l_0_0))
  return mp.INFECTED
end

