-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/528.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC34: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC39: Confused about usage of register: R1 in 'UnsetPending'

  if (not (this_sigattrlog[7]).matched or (this_sigattrlog[7]).utf8p2 == nil or l_0_1 ~= nil) and nil ~= nil then
    if not (nil):find(l_0_1) then
      return mp.CLEAN
    end
    l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_1)
    if (sysio.IsFileExists)(l_0_1) then
      (bm.add_related_file)(l_0_1)
    end
    -- DECOMPILER ERROR at PC64: Confused about usage of register: R1 in 'UnsetPending'

    local l_0_2 = nil
    for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(nil)) do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC72: Confused about usage of register: R7 in 'UnsetPending'

      R7_PC72 = (mp.ContextualExpandEnvironmentVariables)(R7_PC72)
      if (sysio.IsFileExists)(R7_PC72) then
        (bm.add_related_file)(R7_PC72)
      end
    end
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

