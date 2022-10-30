-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3618.luac 

-- params : ...
-- function num : 0
Infrastructure_CheckNonUxWDRootConfig = function()
  -- function num : 0_0
  local l_1_0 = "hklm\\software\\microsoft\\windows defender"
  local l_1_1 = "hklm\\software\\policies\\microsoft\\windows defender"
  local l_1_2 = {}
  l_1_2.disableantivirus = 0
  l_1_2.disableantispyware = 0
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, l_1_0, l_1_2) then
    return true
  end
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, l_1_1, l_1_2) then
    return true
  end
end

Infrastructure_CheckNonUxRealTimeProtections = function()
  -- function num : 0_1
  local l_2_0 = "hklm\\software\\microsoft\\windows defender\\real-time protection"
  local l_2_1 = "hklm\\software\\policies\\microsoft\\windows defender\\real-time protection"
  local l_2_2 = {}
  l_2_2.DisableBehaviorMonitoring = 0
  l_2_2.DisableIOAVProtection = 0
  l_2_2.DisableOnAccessProtection = 0
  l_2_2.DisableScanOnRealtimeEnable = 0
  l_2_2.DisableScriptScanning = 0
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, l_2_0, l_2_2) then
    return true
  end
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, l_2_1, l_2_2) then
    return true
  end
end

Infrastructure_CheckNonUxThreatActions = function()
  -- function num : 0_2
  local l_3_0 = "hklm\\software\\microsoft\\windows defender\\threats\\ThreatSeverityDefaultAction"
  local l_3_1 = "hklm\\software\\policies\\microsoft\\windows defender\\threats\\ThreatSeverityDefaultAction"
  local l_3_2 = "hklm\\software\\policies\\microsoft\\windows defender\\policy manager\\ThreatSeverityDefaultAction"
  local l_3_3 = {}
  -- DECOMPILER ERROR at PC8: No list found for R3 , SetList fails

  local l_3_4 = {}
  -- DECOMPILER ERROR at PC10: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC11: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC12: No list found for R4 , SetList fails

  local l_3_5 = {}
  -- DECOMPILER ERROR at PC14: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC15: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC17: No list found for R5 , SetList fails

  -- DECOMPILER ERROR at PC18: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC19: Overwrote pending register: R7 in 'AssignReg'

  for l_3_9,l_3_10 in ("4")("5") do
    if Infrastructure_ReportFirstRegistryValueIfValueArrMatch(3449, l_3_10, l_3_3, l_3_4) then
      return true
    end
  end
  local l_3_11 = "hklm\\software\\microsoft\\windows defender\\threats\\ThreatTypeDefaultAction"
  local l_3_12 = "hklm\\software\\policies\\microsoft\\windows defender\\threats\\ThreatTypeDefaultAction"
  local l_3_13 = {}
  -- DECOMPILER ERROR at PC39: No list found for R8 , SetList fails

  local l_3_14 = {}
  -- DECOMPILER ERROR at PC41: Overwrote pending register: R10 in 'AssignReg'

  -- DECOMPILER ERROR at PC43: No list found for R9 , SetList fails

  -- DECOMPILER ERROR at PC46: Overwrote pending register: R10 in 'AssignReg'

  for l_3_18,i_2 in l_3_14 do
    if Infrastructure_ReportFirstRegistryValueIfValueArrMatch(3449, l_3_18, l_3_13, l_3_4) then
      return true
    end
  end
  -- DECOMPILER ERROR at PC61: Confused about usage of register R9 for local variables in 'ReleaseLocals'

end

Infrastructure_CheckNonUxSpynet = function()
  -- function num : 0_3
  local l_4_0 = "hklm\\software\\microsoft\\windows defender\\spynet"
  local l_4_1 = "hklm\\software\\policies\\microsoft\\windows defender\\spynet"
  local l_4_2 = {}
  l_4_2.DisableBlockAtFirstSeen = 0
  local l_4_3 = {}
  -- DECOMPILER ERROR at PC7: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC8: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC9: Overwrote pending register: R5 in 'AssignReg'

  for l_4_7,l_4_8 in l_4_0(l_4_1) do
    if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, l_4_8, l_4_2) then
      return true
    end
  end
end

Infrastructure_CheckNonUxPolicyManager = function()
  -- function num : 0_4
  local l_5_0 = "hklm\\software\\policies\\microsoft\\windows defender\\policy manager"
  local l_5_1 = {}
  l_5_1.AllowBehaviorMonitoring = 1
  l_5_1.AllowIOAVProtection = 1
  l_5_1.AllowOnAccessProtection = 1
  l_5_1.AllowScriptScanning = 1
  if Infrastructure_ReportFirstRegistryValueCheckDefaultDW(3449, l_5_0, l_5_1) then
    return true
  end
end

Infrastructure_CheckNonUxControlledWDDefaults = function()
  -- function num : 0_5
  if Infrastructure_CheckNonUxWDRootConfig() or Infrastructure_CheckNonUxRealTimeProtections() or Infrastructure_CheckNonUxThreatActions() or Infrastructure_CheckNonUxSpynet() or Infrastructure_CheckNonUxPolicyManager() then
    return true
  end
end

Infrastructure_ShouldRunAntiTamperingRepair = function()
  -- function num : 0_6
  local l_7_0 = {}
  -- DECOMPILER ERROR at PC2: No list found for R0 , SetList fails

  -- DECOMPILER ERROR at PC3: Overwrote pending register: R1 in 'AssignReg'

  do
    if not (("5fe1bc3b-41bf-4197-8ffe-da2311848f06").IsServer)() then
      local l_7_1 = Infrastructure_HasAnyPartnerGuid(l_7_0)
    end
    -- DECOMPILER ERROR at PC11: Confused about usage of register: R1 in 'UnsetPending'

    if l_7_1 then
      return false
    end
    if (MpCommon.GetGlobalMpAttribute)("IsMSRTProduct") then
      return false
    end
    local l_7_2 = nil
    local l_7_3 = Infrastructure_IsE5()
    if not Infrastructure_IsE3() then
      local l_7_4 = nil
    else
      do
        do
          do
            local l_7_5, l_7_7 = , false
            -- DECOMPILER ERROR at PC37: Confused about usage of register: R4 in 'UnsetPending'

            do return Info.Offline or not l_7_7 or Info.OSMajorVersion == 10 end
            -- DECOMPILER ERROR at PC46: freeLocal<0 in 'ReleaseLocals'

            -- DECOMPILER ERROR: 2 unprocessed JMP targets
          end
        end
      end
    end
  end
end

Infrastructure_AntiTamperingCheckAndRepair = function()
  -- function num : 0_7
  if Infrastructure_ShouldRunAntiTamperingRepair() then
    Infrastructure_CheckNonUxControlledWDDefaults()
  end
  return 
end

Infrastructure_MSRTDASTelemetry = function()
  -- function num : 0_8
  if (MpCommon.GetGlobalMpAttribute)("IsMSRTProduct") then
    local l_9_0 = {}
    -- DECOMPILER ERROR at PC9: No list found for R0 , SetList fails

    local l_9_1 = {}
    -- DECOMPILER ERROR at PC11: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC13: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC14: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC15: Overwrote pending register: R3 in 'AssignReg'

    for l_9_5,l_9_6 in ("hklm\\software\\policies\\microsoft\\windows defender")("DisableAntispyware") do
      local l_9_7 = (sysio.RegOpenKey)(l_9_6)
      if l_9_7 then
        for l_9_11,l_9_12 in ipairs(l_9_1) do
          local l_9_13 = (sysio.GetRegValueAsDword)(l_9_7, l_9_12)
          if l_9_13 and bitand(l_9_13, 1) == 1 then
            (MpCommon.SetGlobalMpAttribute)("DefenderTamperingCheckRegKeyScan")
            ;
            (MpDetection.ScanResource)((string.format)("regkeyvalue://%s\\\\%s", l_9_6, l_9_12))
            ;
            (MpCommon.DeleteGlobalMpAttribute)("DefenderTamperingCheckRegKeyScan")
            return 
          end
        end
      end
    end
  end
  do
    return 
  end
end

Infrastructure_ScanMpCfgDefaults = function()
  -- function num : 0_9
  local l_10_0 = "hklm\\software\\policies\\microsoft\\windows defender"
  local l_10_1 = "hklm\\software\\policies\\microsoft\\windows defender\\policy manager"
  local l_10_2 = (sysio.RegOpenKey)(l_10_0)
  if l_10_2 then
    local l_10_3 = (sysio.GetRegValueAsDword)(l_10_2, "DisableSpecialRunningModes")
    if l_10_3 and l_10_3 ~= 0 then
      local l_10_4 = (string.format)("MpCfgScanDisableSpecialRunningModes%s", l_10_3)
      ;
      (MpCommon.SetGlobalMpAttribute)(l_10_4)
      ;
      (MpDetection.ScanResource)((string.format)("regkeyvalue://%s\\\\DisableSpecialRunningModes", l_10_0))
      ;
      (MpCommon.DeleteGlobalMpAttribute)(l_10_4)
      return 
    end
  end
  do
    l_10_2 = (sysio.RegOpenKey)(l_10_1)
    if l_10_2 then
      local l_10_5 = (sysio.GetRegValueAsDword)(l_10_2, "DisableSpecialRunningModes")
      if l_10_5 and l_10_5 ~= 0 then
        local l_10_6 = (string.format)("MpCfgScanDisableSpecialRunningModes%s", l_10_5)
        ;
        (MpCommon.SetGlobalMpAttribute)(l_10_6)
        ;
        (MpDetection.ScanResource)((string.format)("regkeyvalue://%s\\\\DisableSpecialRunningModes", l_10_1))
        ;
        (MpCommon.DeleteGlobalMpAttribute)(l_10_6)
      end
    end
  end
end

isTamperProtectionOn = function(l_11_0)
  -- function num : 0_10
  local l_11_1 = 60
  local l_11_2 = "MpTamperProtectionState"
  if l_11_0 == nil then
    l_11_0 = true
  end
  if l_11_0 then
    if (MpCommon.QueryPersistContextNoPath)(l_11_2, "off") then
      return false
    end
    if (MpCommon.QueryPersistContextNoPath)(l_11_2, "on") then
      return true
    end
  end
  local l_11_3 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
  if l_11_3 then
    local l_11_4 = (sysio.GetRegValueAsDword)(l_11_3, "TamperProtection")
    if l_11_4 then
      if (crypto.bitand)(l_11_4, 1) == 1 then
        local l_11_5 = MpCommon.SetPersistContextNoPath
        local l_11_6 = l_11_2
        local l_11_7 = {}
        -- DECOMPILER ERROR at PC50: No list found for R7 , SetList fails

        -- DECOMPILER ERROR at PC51: Overwrote pending register: R8 in 'AssignReg'

        l_11_5(l_11_6, l_11_7, "on")
        return l_11_4
      else
        do
          local l_11_8 = MpCommon.SetPersistContextNoPath
          local l_11_9 = l_11_2
          do
            local l_11_10 = {}
            -- DECOMPILER ERROR at PC60: No list found for R7 , SetList fails

            -- DECOMPILER ERROR at PC61: Overwrote pending register: R8 in 'AssignReg'

            l_11_8(l_11_9, l_11_10, "off")
            l_11_8 = false
            do return l_11_8 end
            return false
          end
        end
      end
    end
  end
end

Infrastructure_DLAMTelemetry = function()
  -- function num : 0_11
  if isTamperProtectionOn() == false then
    return 
  end
  local l_12_0 = false
  local l_12_1 = false
  local l_12_2 = false
  local l_12_3 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender")
  do
    if l_12_3 then
      local l_12_4 = (sysio.GetRegValueAsDword)(l_12_3, "ManagedDefenderProductType")
      if l_12_4 and l_12_4 == 6 then
        l_12_0 = true
      end
    end
    local l_12_5 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
    do
      if l_12_5 then
        local l_12_6 = (sysio.GetRegValueAsDword)(l_12_5, "SenseEnabled")
        if l_12_6 and l_12_6 == 1 then
          l_12_1 = true
        end
      end
      local l_12_7 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Policy Manager")
      do
        if l_12_7 then
          local l_12_8 = (sysio.GetRegValueAsDword)(l_12_7, "DisableLocalAdminMerge")
          if l_12_8 and l_12_8 == 1 then
            l_12_2 = true
          end
        end
        if l_12_0 and l_12_1 and l_12_2 then
          (MpCommon.SetGlobalMpAttribute)("EnableDLAM")
          ;
          (MpDetection.ScanResource)("regkeyvalue://HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Policy Manager\\\\DisableLocalAdminMerge")
          ;
          (MpCommon.DeleteGlobalMpAttribute)("EnableDLAM")
          return true
        end
      end
    end
  end
end

Infrastructure_ExclusionTelemetry = function()
  -- function num : 0_12
  if not (versioning.IsSeville)() then
    return 
  end
  local l_13_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
  do
    if l_13_0 then
      local l_13_1 = (sysio.RegEnumValues)(l_13_0)
      if l_13_1 then
        (MpCommon.SetGlobalMpAttribute)("ExclusionSet")
        ;
        (MpDetection.ScanResource)("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\SenseEnabled")
        ;
        (MpCommon.DeleteGlobalMpAttribute)("ExclusionSet")
      end
    end
    l_13_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
    do
      if l_13_0 then
        local l_13_2 = (sysio.RegEnumValues)(l_13_0)
        if l_13_2 then
          (MpCommon.SetGlobalMpAttribute)("ExclusionSet")
          ;
          (MpDetection.ScanResource)("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\SenseEnabled")
          ;
          (MpCommon.DeleteGlobalMpAttribute)("ExclusionSet")
        end
      end
      l_13_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
      do
        if l_13_0 then
          local l_13_3 = (sysio.RegEnumValues)(l_13_0)
          if l_13_3 then
            (MpCommon.SetGlobalMpAttribute)("ExclusionSet")
            ;
            (MpDetection.ScanResource)("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\SenseEnabled")
            ;
            (MpCommon.DeleteGlobalMpAttribute)("ExclusionSet")
          end
        end
        l_13_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
        do
          if l_13_0 then
            local l_13_4 = (sysio.RegEnumValues)(l_13_0)
            if l_13_4 then
              (MpCommon.SetGlobalMpAttribute)("ExclusionSet")
              ;
              (MpDetection.ScanResource)("regkeyvalue://HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features\\\\SenseEnabled")
              ;
              (MpCommon.DeleteGlobalMpAttribute)("ExclusionSet")
            end
          end
          return true
        end
      end
    end
  end
end


