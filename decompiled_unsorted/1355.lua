-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1355.luac 

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
  for l_0_6,l_0_7 in pairs({"/s", "/m", "password", ">"}) do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R6 in 'UnsetPending'

    if (string.find)(l_0_2, R6_PC38, 1, true) == nil then
      return mp.CLEAN
    end
  end
  do
    if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
      local l_0_8 = nil
      if #(string.lower)((this_sigattrlog[1]).utf8p2) > 1 then
        bm_AddRelatedFileFromCommandLine((string.lower)((this_sigattrlog[1]).utf8p2), nil, nil, 1)
      end
    end
    return mp.INFECTED
  end
end

