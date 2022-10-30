-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21622.luac 

-- params : ...
-- function num : 0
if not peattributes.ismsil then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 16777216 then
  return mp.CLEAN
end
local l_0_1 = nil
if (hstrlog[3]).matched then
  l_0_1 = (hstrlog[3]).VA
else
  if (hstrlog[4]).matched then
    l_0_1 = (hstrlog[4]).VA
  else
    return mp.CLEAN
  end
end
if not (pe.contains_va)(1, l_0_1) then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)((pesecs[1]).PointerToRawData, (pesecs[1]).SizeOfRawData)
if #l_0_2 < 4096 and #l_0_2 > 16777216 then
  return mp.CLEAN
end
for l_0_6 in (string.gmatch)(l_0_2, "zsrvvgEAAA[%w+/]+=?=?") do
  if #l_0_6 > 4096 then
    (mp.set_mpattribute)("//MpBase64DecodeLongLines")
    ;
    (mp.vfo_add_buffer)(l_0_6, "[Obfuscator.AO]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    break
  end
end
do
  return mp.INFECTED
end

