-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21679.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  end
  local l_0_1, l_0_2 = , (bm.get_process_relationships)()
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC17: Confused about usage of register: R7 in 'UnsetPending'

    if (string.lower)(R7_PC17.image_path) ~= nil and ((string.find)((string.lower)(R7_PC17.image_path), "\\wmiprvse.exe", 1, true) or (string.find)((string.lower)(R7_PC17.image_path), "\\winrshost.exe", 1, true) or (string.find)((string.lower)(R7_PC17.image_path), "\\powershell.exe", 1, true) or (string.find)((string.lower)(R7_PC17.image_path), "\\scrcons.exe", 1, true) or (string.find)((string.lower)(R7_PC17.image_path), "\\wsmprovhost.exe", 1, true) or (string.find)((string.lower)(R7_PC17.image_path), "\\cmd.exe", 1, true)) then
      if l_0_1 ~= nil and (string.len)(l_0_1) > 3 then
        local l_0_9 = nil
        if (mp.GetExecutablesFromCommandLine)(l_0_1) ~= nil then
          for l_0_13,l_0_14 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1)) do
            local l_0_10 = nil
            -- DECOMPILER ERROR at PC95: Confused about usage of register: R14 in 'UnsetPending'

            R14_PC95 = (mp.ContextualExpandEnvironmentVariables)(R14_PC95)
            ;
            (bm.add_related_file)(R14_PC95)
          end
        end
      end
      do
        do
          do return mp.INFECTED end
          -- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC107: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  return mp.CLEAN
end

