-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21700.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 259840 or (mp.getfilesize)() < 132864 or peattributes.isdll == false or peattributes.hasexports == false or peattributes.suspicious_timestamp == false then
  return mp.CLEAN
end
local l_0_0 = pehdr.ImageBase + pehdr.AddressOfEntryPoint
if (hstrlog[1]).matched and l_0_0 - (hstrlog[1]).VA < 21 then
  return mp.INFECTED
end
if (hstrlog[2]).matched and l_0_0 - (hstrlog[2]).VA < 21 then
  return mp.INFECTED
end
if (hstrlog[3]).matched and l_0_0 - (hstrlog[3]).VA < 21 then
  return mp.INFECTED
end
if (hstrlog[4]).matched and l_0_0 - (hstrlog[4]).VA < 21 then
  return mp.INFECTED
end
if (hstrlog[5]).matched and l_0_0 - (hstrlog[5]).VA < 21 then
  return mp.INFECTED
end
if (hstrlog[6]).matched and l_0_0 - (hstrlog[6]).VA < 21 then
  return mp.INFECTED
end
if (hstrlog[7]).matched and l_0_0 - (hstrlog[7]).VA < 21 then
  return mp.INFECTED
end
if (hstrlog[8]).matched and l_0_0 - (hstrlog[8]).VA < 21 then
  return mp.INFECTED
end
return mp.CLEAN

