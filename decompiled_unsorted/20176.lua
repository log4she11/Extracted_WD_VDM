-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20176.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  else
  end
  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[9]).matched or (this_sigattrlog[9]).utf8p2 == nil or (this_sigattrlog[9]).utf8p2 ~= nil) and ((string.find)((this_sigattrlog[9]).utf8p2, ".sct", 1, true) or (string.find)((this_sigattrlog[9]).utf8p2, "/i:http", 1, true) or (string.find)((this_sigattrlog[9]).utf8p2, "/u ", 1, true)) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

