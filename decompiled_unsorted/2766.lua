-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2766.luac 

-- params : ...
-- function num : 0
if pehdr.DllCharacteristics ~= 0 then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[4]).RVA ~= 0 or ((pehdr.DataDirectory)[4]).Size ~= 0 then
  return mp.CLEAN
end
if pehdr.Machine ~= 332 then
  return mp.CLEAN
end
local l_0_0 = (mp.IOAVGetDownloadUrl)()
if l_0_0 == nil then
  return mp.CLEAN
end
;
(pe.set_peattribute)("enable_vmm_grow", true)
;
(pe.set_peattribute)("deep_analysis", true)
return mp.INFECTED

