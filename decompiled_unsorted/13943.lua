-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13943.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Win32/Sasquor.F")
return mp.CLEAN

