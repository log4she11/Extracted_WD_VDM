-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3251.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 4096 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_3 = 0
local l_0_2 = (string.gsub)(l_0_1, "/%*%w-%*/", "")
-- DECOMPILER ERROR at PC33: Overwrote pending register: R2 in 'AssignReg'

repeat
  local l_0_4 = R4_PC33
  -- DECOMPILER ERROR at PC41: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC42: Overwrote pending register: R2 in 'AssignReg'

until l_0_4 == 0
repeat
  -- DECOMPILER ERROR at PC51: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC52: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC53: Overwrote pending register: R2 in 'AssignReg'

until l_0_4 == 0
repeat
  -- DECOMPILER ERROR at PC62: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC63: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC64: Overwrote pending register: R2 in 'AssignReg'

until l_0_4 == 0
repeat
  -- DECOMPILER ERROR at PC73: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC74: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC75: Overwrote pending register: R2 in 'AssignReg'

until l_0_4 == 0
if l_0_3 > 3 then
  (mp.vfo_add_buffer)(l_0_2, "[NeutrinoEK.Y]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
return mp.CLEAN

