-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3418.luac 

-- params : ...
-- function num : 0
Infrastructure_ScanFakeNtModule = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = nil
  local l_1_2 = nil
  for l_1_6,l_1_7 in ipairs(l_1_0) do
    local l_1_3 = 0
    -- DECOMPILER ERROR at PC5: Confused about usage of register: R7 in 'UnsetPending'

    if R7_PC5.BaseDllName == "ntoskrnl.exe" then
      if l_1_3 == 0 then
        l_1_2 = R7_PC5
        l_1_3 = l_1_3 + 1
      else
        if R7_PC5.FullDllName == l_1_2.FullDllName and bitand(R7_PC5.DllBase, 4294967295) ~= bitand(l_1_2.DllBase, 4294967295) and R7_PC5.SizeOfImage ~= l_1_2.SizeOfImage then
          return true
        end
      end
    end
  end
  return false
end

Infrastructure_ScanModules64 = function()
  -- function num : 0_1
  local l_2_0 = nil
  local l_2_1 = nil
  if Infrastructure_ScanFakeNtModule((Kernel.GetModuleList)()) then
    l_2_1 = (Detection.GenerateDetection)(2147684762, "Vbr::Rovnix")
    return l_2_1
  end
  for l_2_5,l_2_6 in ipairs((Kernel.GetModuleList)()) do
    local l_2_2 = nil
    -- DECOMPILER ERROR at PC20: Confused about usage of register: R6 in 'UnsetPending'

    local l_2_8 = GetPEOffset(R6_PC20.DllBase)
    if l_2_8 then
      local l_2_9, l_2_10, l_2_11 = , GetImageDataDirectory(l_2_7.DllBase, 4)
      local l_2_12, l_2_13, l_2_14 = , GetImageDataDirectory(l_2_7.DllBase, 6)
      if (crypto.shr64)(l_2_7.DllBase, 32) >= 4294965248 and l_2_10 and l_2_12 == 0 and l_2_13 and 6 < 28 then
        local l_2_15 = nil
        -- DECOMPILER ERROR at PC51: Overwrote pending register: R15 in 'AssignReg'

        if l_2_8 then
          local l_2_16 = nil
          local l_2_17 = nil
          if (string.byte)((Kernel.GetMemoryAsString)(nil + 14, 5), 1) == 233 then
            local l_2_18 = nil
            if bitand(readu32((Kernel.GetMemoryAsString)(nil + 14, 5), 1), 2147483648) == 2147483648 then
              do
                local l_2_19 = nil
                l_2_1 = (Kernel.RkPattScan)(l_2_17 + 5 + bitor(readu32((Kernel.GetMemoryAsString)(nil + 14, 5), 1), (crypto.shl64)(4294967295, 32)))
                if l_2_1 and l_2_1.DetectionName == "Virus:Win64/Rovnix.gen!A" then
                  l_2_1.DetectionInfo = "Vbr::Rovnix"
                  return l_2_1
                else
                  l_2_1 = nil
                end
                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC103: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
  end
end


