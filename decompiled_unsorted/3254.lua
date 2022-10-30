-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3254.luac 

-- params : ...
-- function num : 0
Infrastructure_FindEFISystemPartitions = function()
  -- function num : 0_0
  local l_1_0 = {}
  local l_1_1 = "\\\\?\\HarddiskVolume%d\\EFI"
  local l_1_2 = 10
  for l_1_6 = 1, l_1_2 do
    local l_1_7 = l_1_1:format(l_1_6)
    if (sysio.IsFolderExists)(l_1_7) then
      l_1_0[#l_1_0 + 1] = l_1_7
    end
  end
  return l_1_0
end

ScanEFIBootloaders = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = 2
  local l_2_2 = (sysio.FindFiles)(l_2_0, "*.efi", l_2_1)
  for l_2_6,l_2_7 in ipairs(l_2_2) do
    (MpCommon.SetGlobalMpAttribute)("UefiLuaBootloaderScan")
    ;
    (MpDetection.ScanResource)("file://" .. l_2_7)
    ;
    (MpCommon.DeleteGlobalMpAttribute)("UefiLuaBootloaderScan")
  end
  local l_2_8 = (sysio.FindFiles)(l_2_0, "grub.cfg", l_2_1)
  for l_2_12,l_2_13 in ipairs(l_2_8) do
    (MpCommon.SetGlobalMpAttribute)("UefiLuaGrubCfgScan")
    ;
    (MpDetection.ScanResource)("file://" .. l_2_13)
    ;
    (MpCommon.DeleteGlobalMpAttribute)("UefiLuaGrubCfgScan")
  end
end

Infrastructure_ScanEFISystemPartitions = function()
  -- function num : 0_2
  local l_3_0 = Infrastructure_FindEFISystemPartitions()
  for l_3_4,l_3_5 in ipairs(l_3_0) do
    ScanEFIBootloaders(l_3_5)
  end
end


