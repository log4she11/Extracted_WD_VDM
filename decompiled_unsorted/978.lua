-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/978.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
    l_0_1 = MpCommon
    l_0_1 = l_0_1.PathToWin32Path
    l_0_2 = l_0_0
    l_0_1 = l_0_1(l_0_2)
    l_0_0 = l_0_1
  end
  -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (string.find)(l_0_0, "windows\\sys", 1, true) ~= 4 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

