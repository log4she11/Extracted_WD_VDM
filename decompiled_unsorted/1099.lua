-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1099.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1, l_0_4 = nil, nil, nil
  end
  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_2, l_0_5 = (this_sigattrlog[3]).timestamp, (this_sigattrlog[4]).timestamp
      local l_0_3 = (this_sigattrlog[4]).utf8p1
    end
    -- DECOMPILER ERROR at PC31: Confused about usage of register: R2 in 'UnsetPending'

    local l_0_6 = nil
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC48: Confused about usage of register: R2 in 'UnsetPending'

    if (string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_3)) == nil or (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_3)), "cachev..dat$", 1, false) or (string.find)((string.lower)((mp.ContextualExpandEnvironmentVariables)(l_0_3)), ".cache$", 1, false) then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC58: Confused about usage of register: R1 in 'UnsetPending'

    if l_0_6 <= l_0_5 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

