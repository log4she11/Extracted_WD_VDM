-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18888.luac 

-- params : ...
-- function num : 0
for l_0_3 = 1, pehdr.NumberOfSections do
  if (pesecs[l_0_3]).Name == ".." and (pesecs[l_0_3]).VirtualAddress == (hstrlog[1]).VA - pehdr.ImageBase and pevars.epsec ~= l_0_3 then
    return mp.INFECTED
  end
end
return mp.CLEAN

