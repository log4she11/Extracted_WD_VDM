-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2150.luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:CodeOnly.ParasiticalRecon.B") >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

