-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20602.luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = false
if (hstrlog[1]).hitcount >= 1 or (hstrlog[2]).hitcount >= 1 or (hstrlog[3]).hitcount >= 1 then
  l_0_0 = true
end
if (hstrlog[4]).hitcount >= 1 or (hstrlog[5]).hitcount >= 1 or (hstrlog[6]).hitcount >= 1 then
  l_0_1 = true
end
if (hstrlog[7]).hitcount >= 1 or (hstrlog[8]).hitcount >= 1 or (hstrlog[9]).hitcount >= 1 then
  l_0_1 = true
end
if (hstrlog[10]).hitcount >= 1 or (hstrlog[11]).hitcount >= 1 or (hstrlog[12]).hitcount >= 1 then
  l_0_1 = true
end
if l_0_0 and l_0_1 then
  return mp.INFECTED
end
return mp.CLEAN

