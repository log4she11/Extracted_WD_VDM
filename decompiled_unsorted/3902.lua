-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3902.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[4]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    if not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p1 then
      (bm.add_related_file)((this_sigattrlog[6]).utf8p1)
    end
    return mp.INFECTED
  end
end

