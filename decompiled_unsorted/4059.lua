-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4059.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1 = (this_sigattrlog[2]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC43: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
        local l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7 = (this_sigattrlog[4]).utf8p2
      end
      -- DECOMPILER ERROR at PC44: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC48: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC57: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC66: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC75: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC84: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC93: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_2 and ((string.find)(l_0_2, "-U ", 1, true) or (string.find)(l_0_2, "--user=", 1, true) or (string.find)(l_0_2, "--runas", 1, true) or (string.find)(l_0_2, "-A ", 1, true) or (string.find)(l_0_2, "--authentication-file=", 1, true)) and (string.match)(l_0_2, "//%d+%.%d+%.%d+%.%d+") then
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

