-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1330.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil or #l_0_0 < 48 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC45: Confused about usage of register: R0 in 'UnsetPending'

  do
    if (string.find)(l_0_0, "\\\\admin$\\\\", 1, true) or (string.find)(l_0_0, "\\[a-z]%$\\") then
      local l_0_5 = nil
      if (string.lower)((MpCommon.PathToWin32Path)(l_0_0)) ~= nil and (string.sub)((string.lower)((MpCommon.PathToWin32Path)(l_0_0)), 0, 2) == "\\\\" then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

