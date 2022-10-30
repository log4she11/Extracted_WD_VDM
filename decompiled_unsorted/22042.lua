-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22042.luac 

-- params : ...
-- function num : 0
if not (hstrlog[1]).matched and not (hstrlog[2]).matched and not (hstrlog[3]).matched then
  return mp.CLEAN
end
if not peattributes.isexe or peattributes.packed or not peattributes.no_exception or not peattributes.no_exports or not peattributes.no_security or not peattributes.x86_image then
  return mp.CLEAN
end
if (mp.getfilesize)() > 5242880 then
  return mp.CLEAN
end
local l_0_0 = (hstrlog[1]).VA
local l_0_1 = (hstrlog[2]).VA
local l_0_2 = (hstrlog[3]).VA
if l_0_2 - l_0_1 < 48 and l_0_1 - l_0_0 < 48 then
  return mp.CLEAN
end
local l_0_3 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_LOWERCASE, mp.FILEPATH_QUERY_FULL))
if (string.find)(l_0_3, "\\windows\\", 1, true) or (string.find)(l_0_3, "\\program files", 1, true) then
  return mp.CLEAN
end
local l_0_4 = l_0_0 - 1536
local l_0_5 = (pe.mmap_va)(l_0_4, 1280)
local l_0_6 = (string.find)(l_0_5, "`\156", 1, true)
if l_0_6 == nil then
  return mp.CLEAN
end
l_0_6 = l_0_4 + l_0_6 - 1
if l_0_6 == pehdr.AddressOfEntryPoint + pehdr.ImageBase then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_7 = (mp.readfile)(0, (mp.getfilesize)())
local l_0_8 = (mp.readu_u32)(l_0_7, 61)
;
(mp.writeu_u32)(l_0_7, l_0_8 + 40 + 1, l_0_6 - pehdr.ImageBase)
;
(mp.vfo_add_buffer)(l_0_7, "[ShellterEP]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED

