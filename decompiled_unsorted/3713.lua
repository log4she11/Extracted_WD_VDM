-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3713.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[6]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[7]).matched or (this_sigattrlog[8]).matched then
      local l_0_1, l_0_2 = (mp.GetExecutablesFromCommandLine)((this_sigattrlog[7]).utf8p2)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      for l_0_6,l_0_7 in ipairs(l_0_1) do
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC48: Confused about usage of register: R5 in 'UnsetPending'

        if (string.find)((string.lower)(R5_PC48), "/library/preferences/com.apple.loginwindow.plist", 1, true) then
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end

