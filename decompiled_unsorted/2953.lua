-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2953.luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)(headerpage, 1) == 76 then
  if (mp.readu_u32)(headerpage, 5) ~= 136193 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(headerpage, 9) ~= 0 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(headerpage, 13) ~= 192 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(headerpage, 17) ~= 1174405120 then
    return mp.CLEAN
  end
  local l_0_0, l_0_1 = (mp.UfsGetMetadataBool)("Lua:FileInZip", true)
  if l_0_0 ~= 0 or not l_0_1 then
    return mp.CLEAN
  end
  local l_0_2, l_0_3 = (mp.UfsGetMetadataBool)("Lua:SingleFileInZip", true)
  if l_0_2 == 0 and l_0_3 then
    (mp.set_mpattribute)("//Lua:ZipWithSingleLnk")
  end
  if (mp.UfsGetMetadataBool)("Lua:ZipWithMotw", true) ~= 0 or not "Lua:ZipWithMotw" then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

