-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3827.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

  if (string.find)(l_0_0, "-psk", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

