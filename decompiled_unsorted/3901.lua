-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3901.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 ~= nil) and (string.find)((this_sigattrlog[2]).utf8p2, "-h", 1, true) and (string.find)((this_sigattrlog[2]).utf8p2, "-x", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

