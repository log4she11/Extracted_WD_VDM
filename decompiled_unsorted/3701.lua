-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3701.luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = "base64_plist_creation"
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_1 ~= nil and (MpCommon.GetPersistContextCountNoPath)(l_0_0) > 0 then
    local l_0_2 = nil
    for l_0_6,l_0_7 in ipairs((MpCommon.GetPersistContextNoPath)(l_0_0)) do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC28: Confused about usage of register: R7 in 'UnsetPending'

      if (string.find)(l_0_1, R7_PC28, 1, true) then
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

