-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/11837.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:Win32/Banload.ARM") then
  return mp.INFECTED
end
return mp.SUSPICIOUS

