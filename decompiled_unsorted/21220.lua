-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21220.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
  local l_0_0, l_0_1 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 ~= nil then
      local l_0_2 = nil
      for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0.utf8p2)) do
        local l_0_3 = nil
        -- DECOMPILER ERROR at PC30: Confused about usage of register: R6 in 'UnsetPending'

        R6_PC30 = (string.lower)((mp.ContextualExpandEnvironmentVariables)(R6_PC30))
        if ((sysio.IsFileExists)(R6_PC30 .. "\\mozcrt19.dll") or (sysio.IsFileExists)(R6_PC30 .. "\\mozsqlite3.dll") or (sysio.IsFileExists)(R6_PC30 .. "\\sqlite3.dll")) and not (string.find)(R6_PC30, "\\mozilla firefox", 1, true) then
          return mp.INFECTED
        end
      end
    end
    do
      return mp.CLEAN
    end
  end
end

