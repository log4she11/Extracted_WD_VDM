-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20149.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  local l_0_0, l_0_1, l_0_2 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC33: Confused about usage of register: R0 in 'UnsetPending'

    if (MpCommon.QueryPersistContext)(l_0_0, "BitsadminTarget") then
      (mp.ReportLowfi)(l_0_0, 1556043553)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

