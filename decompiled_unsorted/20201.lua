-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20201.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched then
  local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 ~= nil and ((string.find)(l_0_0, "\\microsoft\\onedrive\\", 1, true) or (string.find)(l_0_0, "\\microsoft\\teams\\", 1, true)) then
      (bm.add_related_file)(l_0_0)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

