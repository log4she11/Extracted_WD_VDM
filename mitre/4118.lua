-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4118.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R1 in 'AssignReg'

if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).wp2 ~= nil then
  local l_0_1 = nil
  local l_0_0 = nil
else
  do
    -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

    if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).wp2 ~= nil then
      local l_0_2, l_0_3 = l_0_1, (this_sigattrlog[4]).ppid
    else
      do
        if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).wp2 ~= nil then
          local l_0_4 = nil
        else
          do
            -- DECOMPILER ERROR at PC75: Overwrote pending register: R1 in 'AssignReg'

            -- DECOMPILER ERROR at PC82: Overwrote pending register: R0 in 'AssignReg'

            if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).wp2 ~= nil then
              local l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_11, l_0_13, l_0_15, l_0_17 = l_0_4, (this_sigattrlog[5]).ppid
            else
              do
                do
                  if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).wp2 ~= nil then
                    local l_0_10, l_0_12, l_0_14, l_0_16, l_0_18 = , (this_sigattrlog[7]).ppid
                    l_0_14 = string
                    l_0_14 = l_0_14.lower
                    l_0_16 = this_sigattrlog
                    l_0_16 = l_0_16[7]
                    l_0_16 = l_0_16.utf8p2
                    l_0_14 = l_0_14(l_0_16)
                    l_0_10 = l_0_14
                  end
                  -- DECOMPILER ERROR at PC104: Confused about usage of register: R0 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC106: Confused about usage of register: R1 in 'UnsetPending'

                  if l_0_10 == nil or l_0_12 == nil then
                    return mp.CLEAN
                  end
                  -- DECOMPILER ERROR at PC118: Confused about usage of register: R0 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC127: Confused about usage of register: R0 in 'UnsetPending'

                  if (this_sigattrlog[7]).matched and not (string.find)(l_0_10, "init 0", 1, true) and not (string.find)(l_0_10, "init 6", 1, true) then
                    return mp.CLEAN
                  end
                  -- DECOMPILER ERROR at PC138: Confused about usage of register: R1 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC144: Confused about usage of register: R1 in 'UnsetPending'

                  -- DECOMPILER ERROR at PC150: Confused about usage of register: R1 in 'UnsetPending'

                  if IsTechniqueObservedForPid(l_0_12, "T1561.001") or IsTechniqueObservedForPid(l_0_12, "T1561.002") then
                    TrackPidAndTechnique(l_0_12, "T1529", "Impact_SystemReboot")
                    addRelatedProcess()
                    return mp.INFECTED
                  end
                  return mp.CLEAN
                end
              end
            end
          end
        end
      end
    end
  end
end

