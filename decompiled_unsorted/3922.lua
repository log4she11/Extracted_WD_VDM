-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3922.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp1 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).wp1 == nil or (this_sigattrlog[3]).utf8p2) and (string.match)((this_sigattrlog[3]).utf8p2, "/%.[^/]+$") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

