-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/984.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC14: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC15: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    if (string.find)(l_0_0, "\\program files.+dropbox\\client\\dropboxext") or (string.find)(l_0_0, "\\appdata\\local\\microsoft\\teamsmeetingaddin\\.+\\microsoft.teams.addinloader.dll") then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_4 = nil
    for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0)) do
      local l_0_5 = nil
      -- DECOMPILER ERROR at PC42: Confused about usage of register: R6 in 'UnsetPending'

      if R6_PC42 ~= nil and R6_PC42:len() > 3 and (sysio.IsFileExists)(R6_PC42) then
        if (mp.IsKnownFriendlyFile)(R6_PC42, true, false) == true then
          return mp.CLEAN
        end
        ;
        (mp.ReportLowfi)(R6_PC42, 1891100223)
        ;
        (bm.add_related_file)(R6_PC42)
      end
    end
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

