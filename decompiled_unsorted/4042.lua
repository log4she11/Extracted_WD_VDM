-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4042.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
  else
  end
  -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC46: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC55: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC64: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC73: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).wp2 == nil or (string.lower)((this_sigattrlog[2]).utf8p2)) and ((string.match)((string.lower)((this_sigattrlog[2]).utf8p2), "%d+%.%d+%.%d+%.%d+") or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "githubusercontent", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "pastebin", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "bit.ly", 1, true) or (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "goo.gl", 1, true)) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

