-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3281.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC8: No list found for R0 , SetList fails

local l_0_1 = {}
-- DECOMPILER ERROR at PC10: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC12: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC13: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC14: Overwrote pending register: R2 in 'AssignReg'

local l_0_2 = Infrastructure_CheckMSEpresence()
-- DECOMPILER ERROR at PC22: Overwrote pending register: R3 in 'AssignReg'

do
  local l_0_3 = ("rundll32%.exe")()
  -- DECOMPILER ERROR at PC26: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC27: Overwrote pending register: R5 in 'AssignReg'

  if l_0_2 then
    ("spoolsv%.exe")("explorer%.exe")
  else
    if l_0_3 then
      FixTamperedExclusionRegEntries("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\")
    end
  end
  -- WARNING: undefined locals caused missing assignments!
end

