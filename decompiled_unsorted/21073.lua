-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21073.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections < 5 then
  return mp.CLEAN
end
local l_0_0 = (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData
if (mp.getfilesize)() < l_0_0 + 2048 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(l_0_0, 12)
do
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC49: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC50: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC52: Overwrote pending register: R5 in 'AssignReg'

  for l_0_6 = 88, 77, 67 do
    -- DECOMPILER ERROR at PC54: Overwrote pending register: R7 in 'AssignReg'

    -- DECOMPILER ERROR at PC56: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC57: Overwrote pending register: R9 in 'AssignReg'

    if ((1).byte)(0, 0) ~= l_0_2[l_0_6] then
      return mp.CLEAN
    end
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

