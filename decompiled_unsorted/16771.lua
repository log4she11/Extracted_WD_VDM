-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16771.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 13 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 12 then
  (mp.set_mpattribute)("HSTR:BrowserModifier:Win32/YahooSearch.C!Cby")
end
return mp.CLEAN

