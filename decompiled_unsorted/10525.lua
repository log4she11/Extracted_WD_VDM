-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/10525.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:Exception:Mimikatz.A") then
  return mp.CLEAN
end
return mp.INFECTED

