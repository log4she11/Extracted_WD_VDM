-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21500.luac 

-- params : ...
-- function num : 0
if (not peattributes.isexe or not peattributes.no_security or (mp.getfilesize)() < 65535 or (mp.getfilesize)() > 1048575 or (not (hstrlog[1]).matched and not (hstrlog[2]).matched and not (hstrlog[3]).matched and not (hstrlog[4]).matched and not (hstrlog[5]).matched and not (hstrlog[6]).matched and not (hstrlog[7]).matched and not (hstrlog[8]).matched) or (not (hstrlog[9]).matched and not (hstrlog[10]).matched and not (hstrlog[11]).matched and not (hstrlog[12]).matched and not (hstrlog[13]).matched and not (hstrlog[14]).matched and not (hstrlog[15]).matched and not (hstrlog[16]).matched) or ((hstrlog[17]).matched or (hstrlog[18]).matched)) then
  return mp.INFECTED
end
return mp.CLEAN

