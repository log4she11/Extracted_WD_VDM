-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3710.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0, l_0_2, l_0_4, l_0_5, l_0_7 = nil, nil
  end
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
    local l_0_1 = nil
  else
    do
      -- DECOMPILER ERROR at PC39: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC53: Overwrote pending register: R1 in 'AssignReg'

      do
        if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).utf8p2 == nil or (this_sigattrlog[7]).matched) and (this_sigattrlog[7]).utf8p2 ~= nil then
          local l_0_3, l_0_6 = , (this_sigattrlog[5]).utf8p2
        else
        end
        -- DECOMPILER ERROR at PC68: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC73: Confused about usage of register: R0 in 'UnsetPending'

        if (not (this_sigattrlog[8]).matched or (this_sigattrlog[8]).utf8p2 == nil or l_0_3 ~= nil) and (string.find)((this_sigattrlog[8]).utf8p2, l_0_3, 1, true) then
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

