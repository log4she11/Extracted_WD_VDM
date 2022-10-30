-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3521.luac 

-- params : ...
-- function num : 0
GetSystemRootPath = function()
  -- function num : 0_0
  local l_1_0 = (sysio.ExpandFilePath)("%SystemRoot%")
  if not l_1_0 then
    return nil
  end
  for l_1_4,l_1_5 in pairs(l_1_0) do
    if not (string.find)(l_1_5, "%%SystemRoot%%") then
      return l_1_5
    end
  end
  return nil
end

DwordToBytes = function(l_2_0)
  -- function num : 0_1
  return (string.char)((crypto.bitand)((crypto.shr32)(l_2_0, 24), 255)) .. (string.char)((crypto.bitand)((crypto.shr32)(l_2_0, 16), 255)) .. (string.char)((crypto.bitand)((crypto.shr32)(l_2_0, 8), 255)) .. (string.char)((crypto.bitand)(l_2_0, 255))
end

UTF16To8 = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = ""
  for l_3_5 = 1, #l_3_0 do
    if l_3_0:byte(l_3_5) ~= 0 then
      l_3_1 = l_3_1 .. l_3_0:sub(l_3_5, l_3_5)
    end
  end
  return l_3_1
end

Infrastructure_ScanEmotetV5 = function()
  -- function num : 0_3
  if (MpCommon.IsSampled)(50000, true, true, true) == false then
    return 
  end
  local l_4_0 = GetSystemRootPath()
  if not l_4_0 then
    return 
  end
  local l_4_1 = (sysio.GetFileFsVolumeInformation)(l_4_0)
  if not l_4_1 then
    return 
  end
  local l_4_2 = (string.format)("%x", l_4_1.VolumeSerialNumber)
  local l_4_3 = (DwordToBytes((crypto.bswap32)(l_4_1.VolumeSerialNumber)))
  local l_4_4 = nil
  local l_4_5 = (sysio.RegExpandUserKey)("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer")
  if not l_4_5 then
    return 
  end
  for l_4_9,l_4_10 in pairs(l_4_5) do
    local l_4_11 = (sysio.RegOpenKey)(l_4_10)
    if l_4_11 then
      do
        do
          l_4_4 = (sysio.GetRegValueAsBinary)(l_4_11, l_4_2)
          if l_4_4 then
            break
          end
          -- DECOMPILER ERROR at PC60: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC60: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC60: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  if not l_4_4 then
    return 
  end
  local l_4_12 = ""
  for l_4_16 = 0, #l_4_4 - 1 do
    l_4_12 = l_4_12 .. (string.char)((crypto.bitxor)(l_4_4:byte(l_4_16 + 1), l_4_3:byte(l_4_16 % #l_4_3 + 1)))
  end
  if #l_4_12 < 8 then
    return 
  end
  l_4_12 = UTF16To8(l_4_12)
  local l_4_17 = (string.format)("%s\\%s.exe", l_4_12, l_4_12)
  local l_4_18 = {}
  -- DECOMPILER ERROR at PC112: No list found for R8 , SetList fails

  local l_4_19 = {}
  -- DECOMPILER ERROR at PC114: Overwrote pending register: R10 in 'AssignReg'

  -- DECOMPILER ERROR at PC115: Overwrote pending register: R11 in 'AssignReg'

  for l_4_23,l_4_24 in ("%SYSTEMROOT%\\System32\\" .. l_4_17)("%SYSTEMROOT%\\SysWOW64\\" .. l_4_17) do
    local l_4_25 = (sysio.ExpandFilePath)(R16_PC122, true)
    if l_4_25 then
      R16_PC122 = pairs
      R16_PC122 = R16_PC122(l_4_25)
      for l_4_29,l_4_30 in R16_PC122 do
        if (sysio.IsFileExists)(l_4_30) then
          (table.insert)(l_4_19, l_4_30)
        end
      end
    end
  end
  for l_4_34,l_4_35 in pairs(l_4_19) do
    local l_4_35 = nil
    l_4_35 = MpCommon
    l_4_35 = l_4_35.ReportLowfi
    l_4_35(R16_PC152, 3342956293)
  end
  -- DECOMPILER ERROR at PC155: Confused about usage of register R10 for local variables in 'ReleaseLocals'

end


