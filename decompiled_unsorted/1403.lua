-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1403.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil or #l_0_0 <= 15 then
    return mp.CLEAN
  end
  local l_0_2 = nil
  for l_0_6,l_0_7 in pairs({"/si", "/m", "password", "*.*"}) do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R6 in 'UnsetPending'

    if (string.find)(l_0_2, R6_PC38, 1, true) == nil then
      return mp.CLEAN
    end
  end
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_8 = nil
    if #(string.lower)((this_sigattrlog[1]).utf8p2) > 1 then
      local l_0_9 = nil
      for l_0_13,l_0_14 in ipairs((mp.GetExecutablesFromCommandLine)((string.lower)((this_sigattrlog[1]).utf8p2))) do
        local l_0_10 = nil
        -- DECOMPILER ERROR at PC78: Confused about usage of register: R8 in 'UnsetPending'

        -- DECOMPILER ERROR at PC89: Confused about usage of register: R8 in 'UnsetPending'

        if (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)(l_0_2)) then
          (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_0_2))
        end
      end
    end
  end
  do
    l_0_9 = mp
    l_0_9 = l_0_9.INFECTED
    return l_0_9
  end
end

