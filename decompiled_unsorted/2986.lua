-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2986.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:len() < 9 then
  return mp.CLEAN
end
local l_0_1 = (string.sub)(l_0_0, -4)
local l_0_2 = {}
l_0_2[".exe"] = ""
l_0_2[".scr"] = ""
if not l_0_2[l_0_1] then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3[".�cod"] = ""
l_0_3[".�slx"] = ""
l_0_3[".�tpp"] = ""
l_0_3[".�fdp"] = ""
l_0_3[".�gpj"] = ""
l_0_3[".�fig"] = ""
l_0_3[".�gnp"] = ""
l_0_3[".�cip"] = ""
l_0_3[".�txt"] = ""
l_0_3[".\1743pm"] = ""
l_0_3["�xcod"] = ""
l_0_3["�xlsx"] = ""
l_0_3["�xslx"] = ""
l_0_3["�xtpp"] = ""
local l_0_4 = (string.sub)(l_0_0, -9)
if l_0_3[(string.sub)(l_0_4, 1, 5)] then
  (mp.set_mpattribute)("Lua:RTLOEXEDoubleExtension")
end
return mp.CLEAN

