-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20271.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if peattributes.epatscnstart ~= true then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 110592 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 106496 then
  return mp.CLEAN
end
if peattributes.x86_image ~= true then
  return mp.CLEAN
end
return mp.INFECTED

