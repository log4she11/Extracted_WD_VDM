-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2320.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Lua:MsWordExt") then
  (mp.UfsSetMetadataBool)("Lua:MsWordExt", true)
  return mp.INFECTED
else
  if (mp.get_mpattribute)("Lua:MsExcelExt") then
    (mp.UfsSetMetadataBool)("Lua:MsExcelExt", true)
    return mp.INFECTED
  else
    if (mp.get_mpattribute)("Lua:MsPowerpntExt") then
      (mp.UfsSetMetadataBool)("Lua:MsPowerpntExt", true)
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

