-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14862.luac 

-- params : ...
-- function num : 0
if peattributes.amd64_image then
  (mp.set_mpattribute)("SIGATTR:MPK64")
else
  ;
  (mp.set_mpattribute)("SIGATTR:MPK32")
end
return mp.CLEAN

