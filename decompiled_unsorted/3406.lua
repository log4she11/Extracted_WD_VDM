-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3406.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
local l_0_3 = nil
local l_0_4 = false
local l_0_5 = false
for l_0_9,l_0_10 in pairs((Kernel.GetDriverList)()) do
  local l_0_6, l_0_7 = nil
  -- DECOMPILER ERROR at PC11: Confused about usage of register: R9 in 'UnsetPending'

  -- DECOMPILER ERROR at PC15: Confused about usage of register: R10 in 'UnsetPending'

  local l_0_13 = StripDriverPrefix(R9_PC11)
  -- DECOMPILER ERROR at PC23: Overwrote pending register: R13 in 'AssignReg'

  -- DECOMPILER ERROR at PC27: Confused about usage of register: R13 in 'UnsetPending'

  -- DECOMPILER ERROR at PC34: Confused about usage of register: R13 in 'UnsetPending'

  -- DECOMPILER ERROR at PC36: Confused about usage of register: R13 in 'UnsetPending'

  if (((Kernel.GetModuleForAddress)(R10_PC15.DriverEntry)) and not nil) or bitand((nil).Characteristics, (Kernel.pe).IMAGE_SCN_CNT_CODE) == 0 then
    if nil and (nil).Name == ".rsrc" then
      if l_0_4 then
        l_0_2 = nil
      else
        l_0_4 = true
        l_0_2 = l_0_13
      end
    end
    local l_0_14 = nil
    local l_0_15 = nil
    if (Kernel.RkPattScan)((l_0_12.GetIrpAddress)("IRP_MJ_CREATE")) then
      if (string.find)(((Kernel.RkPattScan)((l_0_12.GetIrpAddress)("IRP_MJ_CREATE"))).DetectionName, "/Alureon", 1, true) then
        ((Kernel.RkPattScan)((l_0_12.GetIrpAddress)("IRP_MJ_CREATE"))).DetectionInfo = StripDriverPrefix(l_0_13)
        return (Kernel.RkPattScan)((l_0_12.GetIrpAddress)("IRP_MJ_CREATE"))
      end
    else
    end
  end
  do
    do
      -- DECOMPILER ERROR at PC82: Overwrote pending register: R15 in 'AssignReg'

      if (not l_0_14 or (l_0_14.ValidateMemoryEP)() or l_0_12.StartIoAddress ~= 0) and (Kernel.GetModuleForAddress)(nil) ~= 0 then
        if l_0_5 then
          l_0_3 = nil
        else
          l_0_3 = l_0_13
          l_0_5 = true
        end
      end
      -- DECOMPILER ERROR at PC92: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end
local l_0_16 = l_0_6
local l_0_17 = nil
if ((Kernel.GetDiskDevicePathAsString)()) then
  for l_0_21,l_0_22 in pairs((Kernel.GetDeviceList)()) do
    local l_0_18, l_0_19 = , nil
    -- DECOMPILER ERROR at PC108: Confused about usage of register: R12 in 'UnsetPending'

    -- DECOMPILER ERROR at PC116: Confused about usage of register: R12 in 'UnsetPending'

    if (string.lower)(l_0_14.ObjectPath) == (string.lower)(l_0_18) then
      for l_0_27 in pairs((l_0_14.ParseDeviceChain)()) do
        local l_0_25 = nil
        -- DECOMPILER ERROR at PC122: Confused about usage of register: R17 in 'UnsetPending'

        if not (Kernel.GetModuleForAddress)((((l_0_13.GetDriverObject)()).GetIrpAddress)("IRP_MJ_CREATE")) then
          l_0_19 = (Kernel.RkPattScan)((((l_0_13.GetDriverObject)()).GetIrpAddress)("IRP_MJ_CREATE"))
        end
        local l_0_30 = nil
        if not (Kernel.GetModuleForAddress)((((l_0_13.GetDriverObject)()).GetIrpAddress)("IRP_MJ_INTERNAL_DEVICE_CONTROL")) then
          l_0_19 = (Kernel.RkPattScan)((((l_0_13.GetDriverObject)()).GetIrpAddress)("IRP_MJ_INTERNAL_DEVICE_CONTROL"))
        end
      end
    end
  end
end
do
  -- DECOMPILER ERROR at PC156: Confused about usage of register: R7 in 'UnsetPending'

  -- DECOMPILER ERROR at PC160: Confused about usage of register: R7 in 'UnsetPending'

  -- DECOMPILER ERROR at PC169: Confused about usage of register: R7 in 'UnsetPending'

  -- DECOMPILER ERROR at PC176: Confused about usage of register: R7 in 'UnsetPending'

  -- DECOMPILER ERROR at PC176: Confused about usage of register: R7 in 'UnsetPending'

  if l_0_19 then
    if (string.find)(l_0_19.DetectionName, "/Alureon", 1, true) then
      if (string.find)(l_0_19.DetectionName, ".gen", 1, true) then
        l_0_19.DetectionInfo = "Mbr::Alureon"
      else
        -- DECOMPILER ERROR at PC190: Confused about usage of register: R7 in 'UnsetPending'

        -- DECOMPILER ERROR at PC190: Confused about usage of register: R7 in 'UnsetPending'

        l_0_19.DetectionInfo = (not l_0_16 and l_0_2 and l_0_2) or not l_0_3 or l_0_3
      end
    else
    end
    -- DECOMPILER ERROR at PC195: Confused about usage of register: R7 in 'UnsetPending'

    if nil then
      return nil
    end
  end
end

