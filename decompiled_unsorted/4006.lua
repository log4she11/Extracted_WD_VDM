-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4006.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC52: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).wp2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).wp2 ~= nil then
      local l_0_1, l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p2)
    end
    -- DECOMPILER ERROR at PC53: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC57: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC64: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 and ((string.match)(l_0_1, "[/\\]admin$") ~= nil or (string.match)(l_0_1, "[/\\][a-z]$") ~= nil) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

