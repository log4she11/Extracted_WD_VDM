-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13785.luac 

-- params : ...
-- function num : 0
if pevars.epsec < 3 and pehdr.NumberOfSections == 6 then
  return mp.INFECTED
end
return mp.CLEAN

