-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22189.luac 

-- params : ...
-- function num : 0
do
  if ((((((mp.get_mpattribute)("SCPT:PSDllImportKernel32") and not (mp.get_mpattribute)("SCPT:PSImportVirtualAlloc")) or (mp.get_mpattribute)("SCPT:PSImportCreateThread")) and (mp.get_mpattribute)("SCPT:PowerShell/InteropServicesCopy")) or (mp.get_mpattribute)("SCPT:PSCopyShellCodeToMem")) and not (mp.get_mpattribute)("SCPT:PowerShell/VirtualAlloc")) or (mp.get_mpattribute)("SCPT:PowerShell/CreateThread") then
    local l_0_0 = 0 + 1 + 1 + 1 + 1 + 1 + 1
  end
  -- DECOMPILER ERROR at PC49: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 < 2 then
    return mp.CLEAN
  end
  local l_0_1 = nil
  if (mp.getfilesize)() > 1536000 then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("Lua:PowerShell/MeterpreterShellCode.B!st")
  local l_0_2 = nil
  -- DECOMPILER ERROR at PC72: Overwrote pending register: R2 in 'AssignReg'

  if l_0_2 <= 4096 then
    (mp.readprotection)(false)
    -- DECOMPILER ERROR at PC85: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC88: Confused about usage of register: R2 in 'UnsetPending'

    if nil == nil or (nil):len() < 12 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC97: Confused about usage of register: R2 in 'UnsetPending'

    local l_0_3 = nil
    local l_0_4 = (string.gmatch)(nil, "%[[Ss][Yy][Ss][Tt][Ee][Mm]%.[Cc][Oo][Nn][Vv][Ee][Rr][Tt]%]::[Ff][Rr][Oo][Mm][Bb][Aa][Ss][Ee]64[Ss][Tt][Rr][Ii][Nn][Gg]%(\"(.+)\"%)[\r\n;]")
    for l_0_8 in l_0_4 do
      local l_0_5 = 0
      -- DECOMPILER ERROR at PC104: Confused about usage of register: R8 in 'UnsetPending'

      if R8_PC104 ~= nil and (string.len)(R8_PC104) > 5 and (MpCommon.Base64Decode)(R8_PC104) ~= nil and (string.len)((MpCommon.Base64Decode)(R8_PC104)) > 5 and ((MpCommon.Base64Decode)(R8_PC104)):sub(0, 2) ~= "MZ" and (string.len)((MpCommon.Base64Decode)(R8_PC104)) <= 8192 then
        local l_0_10 = nil
        ;
        (mp.vfo_add_buffer)(fastHex2Bin("4D5A9000000000000000000050450000" .. "4C010100000000000000000000000000" .. "78000F000B0100000000000000000000" .. "00000000D0000000000000000C000000" .. "00004000000100000001000004000000" .. "01000000040000000000000000300000" .. "C5000000000000000300000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "0000000000000000000000002E746578" .. "7400000000200000D000000000200000" .. "D0000000000000000000000000000000" .. "400030E0000000000000000000000000", "[0-9A-Fa-f][0-9A-Fa-f]") .. l_0_10, (string.format)("[PSBase64ShellcodeInPE_%02X]", l_0_5), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        local l_0_11 = nil
        ;
        (mp.vfo_add_buffer)(fastHex2Bin("4D5ACEFA504500006486000000000000" .. "000000000000000000002F000B02FAFA" .. "00000000000000000000000008010000" .. "00000000000000000100000004000000" .. "04000000CAFEBABECAFEBABE05000000" .. "00000000000400000801000000000000" .. "02000000CAFEBABE00000000CAFEBABE" .. "00000000CAFEBABE00000000CAFEBABE" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "00000000000000000000000000000000" .. "0000000000000000", "[0-9A-Fa-f][0-9A-Fa-f]") .. l_0_10, (string.format)("[PSBase64ShellcodeInPE64_%02X]", l_0_5), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        l_0_5 = l_0_5 + 1
      end
    end
    -- DECOMPILER ERROR at PC203: Confused about usage of register: R4 in 'UnsetPending'

    if l_0_5 > 0 then
      return mp.INFECTED
    end
    ;
    (mp.set_mpattribute)("Lua:PowerShell/MeterpreterShellCode.B!noshell")
    return mp.CLEAN
  end
end

