-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20459.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  if not (this_sigattrlog[2]).matched or not (this_sigattrlog[2]).utf8p1 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_4 = nil
  do
    if (sysio.RegOpenKey)((string.sub)((this_sigattrlog[2]).utf8p1, 1, -10)) then
      local l_0_5 = nil
      if (sysio.GetRegValueAsBinary)((sysio.RegOpenKey)((string.sub)((this_sigattrlog[2]).utf8p1, 1, -10)), "element") and (#(sysio.GetRegValueAsBinary)((sysio.RegOpenKey)((string.sub)((this_sigattrlog[2]).utf8p1, 1, -10)), "element") > 1 or (string.byte)((sysio.GetRegValueAsBinary)((sysio.RegOpenKey)((string.sub)((this_sigattrlog[2]).utf8p1, 1, -10)), "element")) ~= 0) then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

