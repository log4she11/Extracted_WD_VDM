-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19063.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and ((string.find)(l_0_0, " /i ", 1, true) or (string.find)(l_0_0, " /package ", 1, true)) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

