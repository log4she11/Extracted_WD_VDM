-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21067.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_2 = nil, nil
else
  do
    do return mp.CLEAN end
    if (this_sigattrlog[3]).matched then
      local l_0_1, l_0_3 = , (this_sigattrlog[3]).timestamp
    else
      do
        do return mp.CLEAN end
        -- DECOMPILER ERROR at PC24: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC24: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC26: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

        if l_0_3 < l_0_1 or l_0_3 - l_0_1 > 50000000 then
          return mp.CLEAN
        end
        local l_0_4 = nil
        if MpCommon.SECURITY_MANDATORY_HIGH_RID < ((bm.get_current_process_startup_info)()).integrity_level then
          return mp.CLEAN
        end
        local l_0_5 = nil
        if ((MpCommon.GetProcessElevationAndIntegrityLevel)((this_sigattrlog[3]).ppid)).IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

