-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13784.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Lua:InnoScript") then
  (mp.set_mpattribute)("MpIsExhaustiveScriptScan")
end
return mp.CLEAN

