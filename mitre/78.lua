-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/78.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true and (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == nil or #l_0_0 < 4 then
  return mp.CLEAN
end
local l_0_1 = (string.find)(l_0_0, "->", 1, true)
if l_0_1 ~= nil then
  l_0_0 = (string.sub)(l_0_0, 0, l_0_1 - 1)
  if l_0_0 == nil or #l_0_0 < 4 then
    return mp.CLEAN
  end
end
do
  if #l_0_0 > 20 then
    local l_0_2 = (string.match)(l_0_0, "([^\\%.]+)$")
    l_0_0 = (string.sub)(l_0_0, 0, 14 + #l_0_2) .. "~1." .. l_0_2
  end
  local l_0_3 = {}
  local l_0_4 = {}
  local l_0_5 = {}
  local l_0_6 = {}
  -- DECOMPILER ERROR at PC89: No list found for R5 , SetList fails

  -- DECOMPILER ERROR at PC92: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC93: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC94: Overwrote pending register: R8 in 'AssignReg'

  -- DECOMPILER ERROR at PC95: Overwrote pending register: R9 in 'AssignReg'

  l_0_5["Lua:TopLevelFile.A!FileInUserDesktop"], l_0_6 = l_0_6, {"T1547.009:persistence_target", "T1547.001:persistence_target", "T1547.009:LnkFileInStartup_target" .. "T1547.009:" .. l_0_0}
  l_0_5["Lua:TopLevelFile.A!FileInAppDataLocalTemp"], l_0_6 = l_0_6, {"T1204.001:execution_target", "T1204.001:LnkFileInTemp_target", "T1204.001:" .. l_0_0}
  l_0_5["Lua:TopLevelFile.A!FileInUserDownloads"], l_0_6 = l_0_6, {"T1204.001:execution_target", "T1204.001:LnkFileInDownload_target", "T1204.001:" .. l_0_0}
  l_0_4["Lua:TopLevelFileExt.A!lnk"] = l_0_5
  l_0_3["PACKED_WITH:[CMDEmbedded]"] = l_0_4
  l_0_6 = {"T1547.001:persistence_target", "T1547.001:CmdFileInStartup_target", "T1547.001:" .. l_0_0}
  l_0_6 = {"T1059.003:execution_target", "T1059.003:CmdFileInDesktop_target", "T1059.003:" .. l_0_0}
  l_0_6 = {"T1059.003:execution_target", "T1059.003:CmdFileInTemp_target", "T1059.003:" .. l_0_0}
  l_0_6 = {"T1059.003:execution_target", "T1059.003:CmdFileInDownload_target", "T1059.003:" .. l_0_0}
  l_0_5 = {["Lua:FileInStartupFolder"] = l_0_6, ["Lua:FileInsideUserDesktopFolder"] = l_0_6, ["Lua:FileInsideAppDataLocalTempFolder"] = l_0_6, ["Lua:FileInsideUserDownloadFolder"] = l_0_6}
  l_0_6 = {"T1547.001:persistence_target", "T1547.001:BatFileInStartup_target", "T1547.001:" .. l_0_0}
  l_0_6 = {"T1059.003:execution_target", "T1059.003:BatFileInDesktop_target", "T1059.003:" .. l_0_0}
  l_0_6 = {"T1059.003:execution_target", "T1059.003:BatFileInTemp_target", "T1059.003:" .. l_0_0}
  l_0_6 = {"T1059.003:execution_target", "T1059.003:BatFileInDownload_target", "T1059.003:" .. l_0_0}
  l_0_5 = {["Lua:FileInStartupFolder"] = l_0_6, ["Lua:FileInsideUserDesktopFolder"] = l_0_6, ["Lua:FileInsideAppDataLocalTempFolder"] = l_0_6, ["Lua:FileInsideUserDownloadFolder"] = l_0_6}
  l_0_3["RPF:TopLevelFile"], l_0_4 = l_0_4, {["Lua:CMDExt"] = l_0_5, ["Lua:BATExt"] = l_0_5}
  l_0_4, l_0_5 = nil
  l_0_6 = pairs
  l_0_6 = l_0_6(l_0_3)
  for l_0_10,i_2 in l_0_6 do
    if (mp.get_mpattribute)(l_0_9) then
      l_0_4 = l_0_9
      l_0_5 = l_0_10
      break
    end
  end
  do
    if l_0_4 == nil or l_0_5 == nil then
      return mp.CLEAN
    end
    local l_0_11, l_0_12, l_0_13 = nil, nil
    for l_0_17,l_0_18 in l_0_13 do
      local l_0_18 = nil
      -- DECOMPILER ERROR at PC216: Overwrote pending register: R13 in 'AssignReg'

      -- DECOMPILER ERROR at PC221: Overwrote pending register: R13 in 'AssignReg'

      if l_0_18 then
        for l_0_22,l_0_23 in l_0_18 do
          local l_0_23 = nil
          -- DECOMPILER ERROR at PC226: Overwrote pending register: R18 in 'AssignReg'

          -- DECOMPILER ERROR at PC231: Overwrote pending register: R5 in 'AssignReg'

          -- DECOMPILER ERROR at PC234: Overwrote pending register: R18 in 'AssignReg'

          -- DECOMPILER ERROR at PC235: Overwrote pending register: R18 in 'AssignReg'

          if l_0_23 then
            l_0_23(nil, (string.format)("[%s]=%s", "Lua:CmdInFileContext.A!mpattribute", l_0_16))
            -- DECOMPILER ERROR at PC244: Overwrote pending register: R18 in 'AssignReg'

            -- DECOMPILER ERROR at PC245: Overwrote pending register: R18 in 'AssignReg'

            -- DECOMPILER ERROR at PC246: Confused about usage of register: R5 in 'UnsetPending'

            l_0_23(nil, (string.format)("[%s]=%s", "Lua:CmdInFileContext.A!mpattribute", l_0_21))
            break
          end
        end
      end
    end
    -- DECOMPILER ERROR at PC259: Confused about usage of register: R5 in 'UnsetPending'

    -- DECOMPILER ERROR at PC265: Overwrote pending register: R8 in 'AssignReg'

    if nil == nil or l_0_11 == nil or l_0_12 == nil then
      return l_0_13.CLEAN
    end
    local l_0_24 = nil
    if tostring(headerpage) ~= nil then
      l_0_24 = #tostring(headerpage)
    end
    if l_0_24 <= 2 then
      l_0_24 = mp
      l_0_24 = l_0_24.CLEAN
      return l_0_24
    end
    l_0_24 = string
    l_0_24 = l_0_24.find
    l_0_24 = l_0_24(tostring(headerpage), "\000", 1, true)
    l_0_24 = l_0_24 - 1
    local l_0_25 = nil
    if l_0_24 == nil or l_0_24 <= 2 then
      l_0_25 = mp
      l_0_25 = l_0_25.CLEAN
      return l_0_25
    end
    l_0_25 = string
    l_0_25 = l_0_25.lower
    l_0_25 = l_0_25((string.sub)(tostring(headerpage), 1, l_0_24))
    local l_0_26 = nil
    if l_0_4 == "RPF:TopLevelFile" and (l_0_11 == "Lua:CMDExt" or l_0_11 == "Lua:BATExt") then
      l_0_26 = string
      l_0_26 = l_0_26.find
      l_0_26 = l_0_26(l_0_25, "\n", 1, true)
      local l_0_27 = nil
      if l_0_26 ~= nil then
        l_0_27 = string
        l_0_27 = l_0_27.gsub
        l_0_27 = l_0_27(l_0_25, "\n", "")
        local l_0_28 = nil
        if l_0_28 >= 4 then
          return mp.CLEAN
        end
        l_0_25 = (string.sub)(l_0_27, 1, l_0_26 - 1)
        l_0_25 = (string.gsub)(l_0_25, "\r", "")
      end
    end
    do
      l_0_26 = mp
      l_0_26 = l_0_26.getfilename
      l_0_26 = l_0_26((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
      local l_0_29 = nil
      if l_0_12 == "Lua:TopLevelFile.A!FileInStartup" or l_0_12 == "Lua:FileInStartupFolder" then
        l_0_29 = 3689015643
        local l_0_30 = nil
        local l_0_31 = nil
        l_0_31 = "BM_MT1547.001:persistence"
        l_0_31 = "BM_MT1547.001:StartupFileTarget.A"
        local l_0_32 = nil
        if l_0_11 == "Lua:TopLevelFileExt.A!lnk" then
          l_0_29 = 4230219827
          l_0_31 = "BM_MT1547.009:StartupLnkFileTarget.A"
          l_0_32 = table
          l_0_32 = l_0_32.insert
          l_0_32(l_0_30, "BM_MT1547.009:persistence")
          l_0_32 = table
          l_0_32 = l_0_32.insert
          l_0_32(l_0_30, "Lua:LnkFileInStartupWithSuspTarget")
        else
          if l_0_11 == "Lua:CMDExt" then
            l_0_29 = 4089264960
            l_0_31 = "BM_MT1547.001:StartupCmdFileTarget.A"
            l_0_32 = table
            l_0_32 = l_0_32.insert
            l_0_32(l_0_30, "Lua:CmdFileInStartupWithSuspTarget")
          else
            if l_0_11 == "Lua:BATExt" then
              l_0_29 = 3568621407
              l_0_31 = "BM_MT1547.001:StartupBatFileTarget.A"
              l_0_32 = table
              l_0_32 = l_0_32.insert
              l_0_32(l_0_30, "Lua:BatFileInStartupWithSuspTarget")
            end
          end
        end
        l_0_32 = mp
        l_0_32 = l_0_32.GetExecutablesFromCommandLine
        l_0_32 = l_0_32(l_0_25)
        local l_0_33 = nil
        l_0_33 = ipairs
        l_0_33 = l_0_33(l_0_32)
        for l_0_37,l_0_38 in l_0_33 do
          local l_0_38 = nil
          l_0_38 = #l_0_37
          if l_0_38 > 3 then
            l_0_38 = string
            l_0_38 = l_0_38.sub
            l_0_38 = l_0_38(l_0_37, 1, 3)
            if l_0_38 == "..\\" then
              l_0_38 = expandRelativePath
              l_0_38 = l_0_38(l_0_37, l_0_26)
              l_0_37 = l_0_38
            end
          end
          l_0_38 = mp
          l_0_38 = l_0_38.ContextualExpandEnvironmentVariables
          l_0_38 = l_0_38(l_0_37)
          l_0_37 = l_0_38
          l_0_38 = isLolbinFile
          l_0_38 = l_0_38(l_0_37)
          if l_0_38 == false then
            l_0_38 = sysio
            l_0_38 = l_0_38.IsFileExists
            l_0_38 = l_0_38(l_0_37)
            if l_0_38 then
              l_0_38 = checkFileLastWriteTime
              l_0_38 = l_0_38(l_0_37, 21600)
              if l_0_38 == false then
                l_0_38 = mp
                l_0_38 = l_0_38.IsKnownFriendlyFile
                l_0_38 = l_0_38(l_0_37, false, false)
                if l_0_38 == false then
                  l_0_38 = TrackFileAndTechnique
                  -- DECOMPILER ERROR at PC452: Confused about usage of register: R5 in 'UnsetPending'

                  l_0_38(l_0_37, nil)
                  l_0_38 = TrackFileAndTechnique
                  l_0_38(l_0_37, l_0_31)
                  l_0_38 = ipairs
                  l_0_38 = l_0_38(l_0_30)
                  for l_0_42,l_0_43 in l_0_38 do
                    local l_0_43 = nil
                    l_0_43 = mp
                    l_0_43 = l_0_43.set_mpattribute
                    l_0_43(l_0_42)
                  end
                  ;
                  (mp.ReportLowfi)(l_0_37, l_0_29)
                  -- DECOMPILER ERROR at PC473: Confused about usage of register R21 for local variables in 'ReleaseLocals'

                end
              end
            end
          end
        end
      end
      if l_0_12 == "Lua:TopLevelFile.A!FileInStartup" or l_0_12 == "Lua:FileInStartupFolder" then
        l_0_29 = string
        l_0_29 = l_0_29.sub
        -- DECOMPILER ERROR at PC481: Overwrote pending register: R13 in 'AssignReg'

        l_0_31 = 1
        l_0_32 = 3
        l_0_29 = l_0_29(l_0_30, l_0_31, l_0_32)
        if l_0_29 == "..\\" then
          l_0_29 = expandRelativePath
          -- DECOMPILER ERROR at PC488: Overwrote pending register: R13 in 'AssignReg'

          l_0_31 = l_0_26
          l_0_29 = l_0_29(l_0_30, l_0_31)
          l_0_25 = l_0_29
          if l_0_25 == nil then
            l_0_29 = mp
            l_0_29 = l_0_29.CLEAN
            return l_0_29
          end
        end
      end
      l_0_29 = getCustomStringHash
      -- DECOMPILER ERROR at PC498: Overwrote pending register: R13 in 'AssignReg'

      l_0_29 = l_0_29(l_0_30)
      local l_0_44 = nil
      -- DECOMPILER ERROR at PC502: Overwrote pending register: R13 in 'AssignReg'

      -- DECOMPILER ERROR at PC503: Overwrote pending register: R13 in 'AssignReg'

      if l_0_29 == nil then
        return l_0_30
      end
      -- DECOMPILER ERROR at PC505: Overwrote pending register: R13 in 'AssignReg'

      l_0_31 = l_0_29
      -- DECOMPILER ERROR at PC507: Overwrote pending register: R13 in 'AssignReg'

      local l_0_45 = nil
      l_0_31 = mp
      l_0_31 = l_0_31.getfilename
      l_0_31 = l_0_31()
      local l_0_46 = nil
      if l_0_31 ~= nil then
        l_0_32 = #l_0_31
        if l_0_32 > 3 then
          l_0_32 = string
          l_0_32 = l_0_32.find
          l_0_32 = l_0_32(l_0_31, "->", 1, true)
          local l_0_47 = nil
          if l_0_32 ~= nil and l_0_32 > 4 then
            l_0_31 = (string.sub)(l_0_31, 0, l_0_32 - 1)
          end
          l_0_31 = normalize_path(l_0_31)
          local l_0_48 = nil
          -- DECOMPILER ERROR at PC546: Confused about usage of register: R5 in 'UnsetPending'

          ;
          (table.insert)(nil, (string.format)("[%s]=%s", "Lua:CmdInFileContext.A!file", l_0_31))
        end
      end
      do
        do
          l_0_32 = ipairs
          -- DECOMPILER ERROR at PC550: Confused about usage of register: R5 in 'UnsetPending'

          l_0_32 = l_0_32(nil)
          for l_0_52,l_0_53 in l_0_32 do
            local l_0_49, l_0_50, l_0_51, l_0_52, l_0_53 = nil
            -- DECOMPILER ERROR at PC556: Confused about usage of register: R19 in 'UnsetPending'

            -- DECOMPILER ERROR at PC562: Overwrote pending register: R21 in 'AssignReg'

            -- DECOMPILER ERROR at PC563: Confused about usage of register: R19 in 'UnsetPending'

            -- DECOMPILER ERROR at PC563: Overwrote pending register: R22 in 'AssignReg'

            if not (MpCommon.QueryPersistContextNoPath)(l_0_44, l_0_45) then
              (MpCommon.AppendPersistContextNoPath)(l_0_44, l_0_45, l_0_46)
            end
          end
          do return mp.CLEAN end
          -- DECOMPILER ERROR at PC571: Confused about usage of register R20 for local variables in 'ReleaseLocals'

        end
      end
    end
  end
end

