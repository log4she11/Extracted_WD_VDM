-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16025.luac 

-- params : ...
-- function num : 0
if pehdr.SizeOfImage > 393216 and pehdr.SizeOfImage < 458752 then
  (mp.changedetectionname)(805306399)
  return mp.INFECTED
end
return mp.SUSPICIOUS

