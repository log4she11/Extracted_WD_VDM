-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2142.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 268435456 then
  return mp.CLEAN
end
if #(mp.enum_mpattributesubstring)("SCPT:PyFlashA") >= 5 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

