-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20766.luac 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.get_mpattribute)("LUA:FileSizeLE5000.A") and (mp.get_mpattribute)("pea_no_security") then
  local l_0_0 = (pe.get_versioninfo)()
  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC26: No list found for R1 , SetList fails

  local l_0_2 = {}
  -- DECOMPILER ERROR at PC29: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC30: Overwrote pending register: R3 in 'AssignReg'

  local l_0_3 = "0.0.0.0"
  local l_0_4 = 0
  local l_0_5 = 0
  for l_0_9 = 1, #l_0_1 do
    if l_0_0.FileVersion == l_0_1[l_0_9] then
      l_0_3 = l_0_3 + 1
      l_0_5 = l_0_5 + 1
    end
  end
  for l_0_13 = 1, #l_0_2 do
    if l_0_0.ProductVersion == l_0_2[l_0_13] then
      l_0_4 = l_0_4 + 1
      l_0_5 = l_0_5 + 1
    end
  end
  if l_0_5 >= 2 and l_0_4 >= 1 and l_0_3 >= 1 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

