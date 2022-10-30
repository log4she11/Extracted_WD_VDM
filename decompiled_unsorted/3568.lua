-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3568.luac 

-- params : ...
-- function num : 0
Infrastructure_ScanBITSJobs = function()
  -- function num : 0_0
  do
    local l_1_0 = (MpCommon.ExpandEnvironmentVariables)("%ProgramData%")
    if (sysio.IsFileExists)(l_1_0 .. "\\microsoft\\network\\downloader\\qmgr.db") ~= nil or (sysio.IsFileExists)(l_1_0 .. "\\microsoft\\network\\downloader\\qmgr0.dat") ~= nil then
      local l_1_1 = (sysio.EnumerateBitsJobs)()
      if l_1_1 == nil then
        return 
      end
      local l_1_2 = {}
      -- DECOMPILER ERROR at PC28: No list found for R2 , SetList fails

      local l_1_3 = {}
      -- DECOMPILER ERROR at PC31: No list found for R3 , SetList fails

      local l_1_4 = {}
      -- DECOMPILER ERROR at PC37: No list found for R4 , SetList fails

      local l_1_5 = {}
      -- DECOMPILER ERROR at PC39: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC40: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC41: Overwrote pending register: R8 in 'AssignReg'

      -- DECOMPILER ERROR at PC44: No list found for R5 , SetList fails

      local l_1_6 = {}
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R8 in 'AssignReg'

      -- DECOMPILER ERROR at PC48: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC49: No list found for R6 , SetList fails

      -- DECOMPILER ERROR at PC50: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC51: Overwrote pending register: R8 in 'AssignReg'

      for l_1_10,l_1_11 in ("windowssearchcache")("electricweb") do
        local l_1_12 = (string.lower)(l_1_11.JobName)
        if l_1_12 == "" or l_1_12 == nil then
          return 
        end
        local l_1_13 = (string.lower)(l_1_11.NotifyCmdProgram)
        if l_1_13 == "" or l_1_13 == nil then
          return 
        end
        for l_1_17 = 1, #l_1_2 do
          if (string.find)(l_1_12, l_1_2[l_1_17], 1, true) ~= nil then
            return 
          end
        end
        for l_1_21 = 1, #l_1_3 do
          if (string.find)(l_1_13, l_1_3[l_1_21], 1, true) ~= nil then
            return 
          end
        end
        local l_1_22 = false
        local l_1_23 = false
        local l_1_24 = false
        for l_1_28 = 1, #l_1_4 do
          if (string.find)(l_1_12, l_1_4[l_1_28], 1, true) ~= nil then
            break
          end
        end
        do
          do
            if (string.match)((string.lower)(l_1_11.NotifyCmdProgramParam), "http[s]?%:%/%/.-%/") ~= nil then
              local l_1_29 = (string.format)("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", (string.byte)(l_1_11.JobId, 4), (string.byte)(l_1_11.JobId, 3), (string.byte)(l_1_11.JobId, 2), (string.byte)(l_1_11.JobId, 1), (string.byte)(l_1_11.JobId, 6), (string.byte)(l_1_11.JobId, 5), (string.byte)(l_1_11.JobId, 8), (string.byte)(l_1_11.JobId, 7), (string.byte)(l_1_11.JobId, 9, 16))
              ;
              (MpDetection.ReportResource)("bitsjob", l_1_29, 3345, false, false)
            end
            if l_1_11.JobFiles == nil then
              return 
            end
            for l_1_33,l_1_34 in ipairs(l_1_11.JobFiles) do
              local l_1_35 = (string.lower)(l_1_34.FileLocalName)
              if l_1_22 == true then
                for l_1_39 = 1, l_1_6 do
                  do
                    do
                      local l_1_40 = (string.find)(l_1_35, l_1_6[l_1_39], 1, true)
                      if l_1_40 ~= nil and l_1_40 == 1 then
                        break
                      end
                      -- DECOMPILER ERROR at PC220: LeaveBlock: unexpected jumping out DO_STMT

                    end
                  end
                end
              end
              local l_1_41 = (string.lower)(l_1_34.FileRemoteName)
              if l_1_24 == true then
                for l_1_45 = 1, #l_1_5 do
                  if (string.find)(l_1_41, l_1_5[l_1_45], 1, true) ~= nil then
                    break
                  end
                end
              end
              do
                local l_1_46 = 0
                do
                  if l_1_11.JobType == l_1_46 and (string.match)(l_1_41, "^http[s]?%:%/%/.-%/") == nil and ((string.match)(l_1_41, "^\\\\localhost\\%a%$\\") ~= nil or (string.match)(l_1_41, "^\\\\127.0.0.1\\%a%$\\") ~= nil or (string.match)(l_1_41, "^%a:\\.+") ~= nil or (string.match)(l_1_41, "^%%%a+%%") ~= nil) then
                    local l_1_47 = (string.format)("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", (string.byte)(l_1_11.JobId, 4), (string.byte)(l_1_11.JobId, 3), (string.byte)(l_1_11.JobId, 2), (string.byte)(l_1_11.JobId, 1), (string.byte)(l_1_11.JobId, 6), (string.byte)(l_1_11.JobId, 5), (string.byte)(l_1_11.JobId, 8), (string.byte)(l_1_11.JobId, 7), (string.byte)(l_1_11.JobId, 9, 16))
                    ;
                    (MpDetection.ReportResource)("bitsjob", l_1_47, 3420, false, false)
                  end
                  -- DECOMPILER ERROR at PC340: LeaveBlock: unexpected jumping out DO_STMT

                end
              end
            end
            local l_1_48 = 1
            do
              if l_1_11.JobType == l_1_48 and l_1_22 == true and l_1_23 == true and l_1_24 == true then
                local l_1_49 = (string.format)("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", (string.byte)(l_1_11.JobId, 4), (string.byte)(l_1_11.JobId, 3), (string.byte)(l_1_11.JobId, 2), (string.byte)(l_1_11.JobId, 1), (string.byte)(l_1_11.JobId, 6), (string.byte)(l_1_11.JobId, 5), (string.byte)(l_1_11.JobId, 8), (string.byte)(l_1_11.JobId, 7), (string.byte)(l_1_11.JobId, 9, 16))
                ;
                (MpDetection.ReportResource)("bitsjob", l_1_49, 3482, false, false)
              end
              -- DECOMPILER ERROR at PC410: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC410: LeaveBlock: unexpected jumping out DO_STMT

            end
          end
        end
      end
    end
    -- WARNING: undefined locals caused missing assignments!
  end
end


