-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2841.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R1 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_2, l_0_3, l_0_4, l_0_5 = nil, nil
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
      local l_0_0 = (this_sigattrlog[2]).utf8p1
    end
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC30: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0 ~= nil then
      local l_0_1 = (string.lower)(l_0_0)
      if (sysio.IsFileExists)(l_0_1) then
        (bm.add_related_file)(l_0_1)
      end
      -- DECOMPILER ERROR at PC43: Confused about usage of register: R1 in 'UnsetPending'

      -- DECOMPILER ERROR at PC47: Confused about usage of register: R1 in 'UnsetPending'

      if l_0_3 ~= nil then
        local l_0_6 = nil
        for l_0_10,l_0_11 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_3)) do
          local l_0_7 = nil
          -- DECOMPILER ERROR at PC55: Confused about usage of register: R7 in 'UnsetPending'

          R7_PC55 = (mp.ContextualExpandEnvironmentVariables)(R7_PC55)
          if (sysio.IsFileExists)(R7_PC55) == true then
            (bm.add_related_file)(R7_PC55)
          end
        end
      end
      do
        do
          do return mp.INFECTED end
          return mp.CLEAN
        end
      end
    end
  end
end

