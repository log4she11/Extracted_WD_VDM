-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21847.luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and ((hstrlog[1]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[1]).VA) then
  return mp.CLEAN
end
if (hstrlog[2]).matched and ((hstrlog[2]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[2]).VA) then
  return mp.CLEAN
end
if (hstrlog[3]).matched and ((hstrlog[3]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[3]).VA) then
  return mp.CLEAN
end
if (hstrlog[4]).matched and ((hstrlog[4]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[4]).VA) then
  return mp.CLEAN
end
if (hstrlog[5]).matched and ((hstrlog[5]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[5]).VA) then
  return mp.CLEAN
end
if (hstrlog[6]).matched and ((hstrlog[6]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[6]).VA) then
  return mp.CLEAN
end
if (hstrlog[7]).matched and ((hstrlog[7]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[7]).VA) then
  return mp.CLEAN
end
if (hstrlog[8]).matched and ((hstrlog[8]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[8]).VA) then
  return mp.CLEAN
end
if (hstrlog[9]).matched and ((hstrlog[9]).VA < pehdr.AddressOfEntryPoint or pehdr.AddressOfEntryPoint + 80 < (hstrlog[9]).VA) then
  return mp.CLEAN
end
return mp.LOWFI

