-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1139.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC7: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 then
      local l_0_2 = nil
      if (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_0.ppid) and MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= ((MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_0.ppid)).IntegrityLevel then
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

