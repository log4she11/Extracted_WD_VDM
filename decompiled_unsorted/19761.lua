-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19761.luac 

-- params : ...
-- function num : 0
if (hstrlog[6]).matched then
  (mp.set_mpattribute)("HSTR:Virus:Win64/Viknok.gen!A")
  return mp.CLEAN
end
if (hstrlog[7]).matched then
  (mp.set_mpattribute)("HSTR:Virus:Win64/Viknok.gen!B")
  return mp.CLEAN
end
if (hstrlog[8]).matched then
  (mp.set_mpattribute)("HSTR:Virus:Win64/Viknok.gen!C")
  return mp.CLEAN
end
return mp.INFECTED

