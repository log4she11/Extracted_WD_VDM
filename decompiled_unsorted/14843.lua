-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14843.luac 

-- params : ...
-- function num : 0
if peattributes.is_process then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:UpatreFragB_Nonprocess")
return mp.CLEAN

