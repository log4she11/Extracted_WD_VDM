-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16392.luac 

-- params : ...
-- function num : 0
if epcode[1] == 85 and epcode[2] == 144 and epcode[3] == 84 and epcode[4] == 93 then
  return mp.INFECTED
end
return mp.CLEAN

