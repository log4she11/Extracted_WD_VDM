-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18807.luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasappendeddata ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if (mp.getfilesize)() ~= 72706 then
  return mp.CLEAN
end
return mp.INFECTED

