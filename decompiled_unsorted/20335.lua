-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20335.luac 

-- params : ...
-- function num : 0
local l_0_0 = (hstrlog[1]).VA
local l_0_1 = pehdr.ImageBase
local l_0_2 = (pesecs[1]).VirtualAddress + l_0_1 + 4096
if l_0_0 < l_0_2 or l_0_1 + 28672 < l_0_0 then
  return mp.CLEAN
end
local l_0_3 = pe.VM_SEARCH_BM
local l_0_4 = pe.vm_search
if l_0_4(l_0_2, l_0_0, "����\001\003\255�\001\002\255\255��\144\000", nil, l_0_3) ~= 4294967295 then
  return mp.INFECTED
end
if l_0_4(l_0_2, l_0_0, "�L��\001\001�\001\002\255\255�E\144\000", nil, l_0_3) ~= 4294967295 then
  return mp.INFECTED
end
return mp.CLEAN

