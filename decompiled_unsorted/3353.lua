-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3353.luac 

-- params : ...
-- function num : 0
ScanKryptomixKeyPathCheck = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (sysio.RegOpenKey)(l_1_0)
  local l_1_2 = 0
  if l_1_1 then
    local l_1_3 = (sysio.RegEnumValues)(l_1_1)
    for l_1_7,l_1_8 in pairs(l_1_3) do
      do
        do
          if l_1_8 and (l_1_8 == "Microsoft Windows Manager" or l_1_8 == "Microsoft Windows Driver") then
            local l_1_9 = (string.lower)((sysio.GetRegValueAsString)(l_1_1, l_1_8))
            if l_1_9 ~= nil and (string.len)(l_1_9) > 16 and (string.find)(l_1_9, "windows\\m-", 2, true) and ((string.find)(l_1_9, "\\winmgr.exe", 1, true) or (string.find)(l_1_9, "\\windrv.exe", 1, true)) then
              (MpDetection.ReportResource)("regkey", l_1_0 .. "\\\\" .. l_1_8, 805306681, false)
            end
          end
          l_1_2 = l_1_2 + 1
          if l_1_2 == 50 then
            SetLuaInstrLimit((crypto.shl64)(1, 24))
            l_1_2 = 0
          end
          -- DECOMPILER ERROR at PC85: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
  end
end

Infrastructure_ScanKryptomixASEPKeyPath = function()
  -- function num : 0_1
  local l_2_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  local l_2_1 = 0
  for l_2_5,l_2_6 in pairs(l_2_0) do
    ScanKryptomixKeyPathCheck(l_2_6)
    l_2_1 = l_2_1 + 1
    if l_2_1 == 8 then
      break
    end
  end
  do
    ScanKryptomixKeyPathCheck("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  end
end


