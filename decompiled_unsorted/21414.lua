-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21414.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8 = (string.lower)((this_sigattrlog[3]).utf8p1)
    else
    end
    -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC62: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC71: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC78: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC84: Confused about usage of register: R0 in 'UnsetPending'

    if (not (this_sigattrlog[5]).matched or (string.lower)((this_sigattrlog[5]).utf8p1) ~= nil) and ((string.find)((string.lower)((this_sigattrlog[5]).utf8p1), "\\microsoft\\exchange server\\v%d%d\\frontend\\") ~= nil or (string.find)((string.lower)((this_sigattrlog[5]).utf8p1), "\\frontend\\httpproxy\\owa\\", 1, true) ~= nil or (string.find)((string.lower)((this_sigattrlog[5]).utf8p1), "\\microsoft\\exchange server\\v%d%d\\clientaccess\\") ~= nil) then
      if (sysio.IsFileExists)((string.lower)((this_sigattrlog[5]).utf8p1)) then
        (bm.add_related_file)((string.lower)((this_sigattrlog[5]).utf8p1))
      end
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

