-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16676.luac 

-- params : ...
-- function num : 0
if (pesecs[1]).Name == "UPX0" and (pesecs[2]).Name == "UPX1" and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

