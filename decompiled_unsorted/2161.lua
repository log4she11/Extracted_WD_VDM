-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2161.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 16777216 then
  return mp.CLEAN
end
if #(mp.enum_mpattributesubstring)("SCPT:CipherSlateC") >= 2 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

