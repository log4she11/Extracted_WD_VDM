-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4010.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p1)
    else
    end
    -- DECOMPILER ERROR at PC63: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
        local l_0_2 = (string.lower)((this_sigattrlog[4]).utf8p1)
      end
      -- DECOMPILER ERROR at PC64: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC68: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_2 and (string.match)(l_0_2, "/%.[^/]+$") then
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

