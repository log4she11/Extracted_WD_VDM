-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/914.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_UEFISTREAM then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
local l_0_2 = {}
-- DECOMPILER ERROR at PC25: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC26: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC27: Overwrote pending register: R4 in 'AssignReg'

for l_0_6,l_0_7 in ("cef5b9a3-476d-497f-9fdc-e98143e0422c")("fff12b8d-7696-4c8b-a985-2747075b4f50") do
  if (string.find)(l_0_1, l_0_7, 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN

