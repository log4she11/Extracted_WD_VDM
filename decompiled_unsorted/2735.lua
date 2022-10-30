-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2735.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("ALF:FOP:Backdoor:Win64/Drixed.Q!dha") then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 400000 or l_0_0 > 1000000 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 8 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize > 4096 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("LUA:Drixed.A!dll")
return mp.CLEAN

