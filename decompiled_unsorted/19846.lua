-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19846.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_3, l_0_5 = nil, nil
    if l_0_0 == nil or l_0_0 == "" then
      l_0_3 = mp
      l_0_3 = l_0_3.CLEAN
      return l_0_3
    end
  end
  do
    if (this_sigattrlog[2]).matched then
      local l_0_2, l_0_4 = , (this_sigattrlog[2]).utf8p1
      if l_0_4 == nil or l_0_4 == "" then
        return mp.CLEAN
      end
    end
    -- DECOMPILER ERROR at PC34: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

    if (string.lower)((string.gsub)(l_0_4, ".exe", "")) == (string.lower)((string.gsub)(l_0_2, ".ahk", "")) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

