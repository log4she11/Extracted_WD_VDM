-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19001.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).wp1 ~= nil then
      local l_0_4 = nil
      if (string.find)((string.lower)((mp.utf16to8)((this_sigattrlog[3]).wp1)), "%(%d+gb%)%.lnk$") then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

