-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1568.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC26: Overwrote pending register: R1 in 'AssignReg'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or not (string.find)(l_0_1, "\\microsoft\\onedrive\\", 1, true) then
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC66: Confused about usage of register: R1 in 'UnsetPending'

  if not (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(nil)), "\\onedrive\\[%d+.]+", 1, true) then
    (bm.add_related_file)((string.lower)((mp.ContextualExpandEnvironmentVariables)(nil)))
    return mp.INFECTED
  end
  return mp.CLEAN
end

