-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14622.luac 

-- params : ...
-- function num : 0
if epcode[1] == 104 and epcode[6] == 195 and epcode[7] == 144 then
  return mp.INFECTED
end
return mp.CLEAN

