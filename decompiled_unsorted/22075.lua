-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22075.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  else
  end
  local l_0_2 = this_sigattrlog[2]
  local l_0_3, l_0_4 = bm.RELATIONSHIPEX_REASON_FLAG_INJECTION, (bm.get_process_relationships)()
  local l_0_5 = nil
  if l_0_5 and #l_0_5 > 0 then
    for l_0_9,l_0_10 in ipairs(l_0_5) do
      local l_0_6 = nil
      -- DECOMPILER ERROR at PC27: Confused about usage of register: R9 in 'UnsetPending'

      if (mp.bitand)(R9_PC27.reason_ex, l_0_3) == l_0_3 and R9_PC27.image_path and #R9_PC27.image_path >= 13 and ((R9_PC27.image_path):lower()):sub(-13) == "\\explorer.exe" then
        l_0_6 = R9_PC27.ppid
        break
      end
    end
  end
  do
    local l_0_11 = nil
    if l_0_2 then
      local l_0_12 = {}
      local l_0_13 = nil
      if (mp.GetExecutablesFromCommandLine)(l_0_2.utf8p2) then
        for l_0_17,l_0_18 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_2.utf8p2)) do
          local l_0_14 = nil
          -- DECOMPILER ERROR at PC67: Confused about usage of register: R12 in 'UnsetPending'

          -- DECOMPILER ERROR at PC77: Confused about usage of register: R12 in 'UnsetPending'

          if (sysio.IsFileExists)(-13) then
            if l_0_11 then
              (table.insert)(l_0_12, (string.format)("%s;%s", l_0_11, -13))
            else
              do
                do
                  -- DECOMPILER ERROR at PC87: Confused about usage of register: R12 in 'UnsetPending'

                  ;
                  (mp.ReportLowfi)(l_0_19, 2737212457)
                  -- DECOMPILER ERROR at PC90: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC90: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC90: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC90: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC90: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
      end
    end
    l_0_13 = #l_0_12
    if l_0_13 > 0 then
      l_0_13 = "SuspDllExplorerInject.A_CmdLineDll"
      local l_0_20 = nil
      l_0_20 = MpCommon
      l_0_20 = l_0_20.GetPersistContextCountNoPath
      l_0_20 = l_0_20(l_0_13)
      if l_0_20 > 0 then
        l_0_20 = ipairs
        l_0_20 = l_0_20(l_0_12)
        for l_0_24,l_0_25 in l_0_20 do
          local l_0_25 = nil
          l_0_25 = MpCommon
          l_0_25 = l_0_25.AppendPersistContextNoPath
          l_0_25(l_0_13, l_0_24, 3600)
        end
      else
        do
          ;
          (MpCommon.OverwritePersistContextNoPath)(l_0_13, l_0_12, 3600)
          -- DECOMPILER ERROR at PC121: Confused about usage of register R7 for local variables in 'ReleaseLocals'

          l_0_13 = bm
          l_0_13 = l_0_13.get_current_process_startup_info
          l_0_13 = l_0_13()
          local l_0_26 = nil
          l_0_26 = bm
          l_0_26 = l_0_26.request_SMS
          l_0_26(l_0_13.ppid, "H")
          l_0_26 = bm
          l_0_26 = l_0_26.add_action
          l_0_26("SmsAsyncScanEvent", 1)
          l_0_26 = triggerMemoryScanOnProcessTree
          l_0_26(true, false, "EMS", 5000, "Behavior:Win32/SuspDllExplorerInject.A")
          l_0_26 = mp
          l_0_26 = l_0_26.INFECTED
          return l_0_26
        end
      end
    end
  end
end

