-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/148.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
local l_0_1 = (MpCommon.GetOriginalFileName)(l_0_0)
if l_0_1 == nil then
  (bm.add_related_string)("OriginalFileName_PeParser", "NULL", bm.RelatedStringBMReport)
else
  ;
  (bm.add_related_string)("OriginalFileName_PeParser", l_0_1, bm.RelatedStringBMReport)
end
local l_0_2 = nil
if (this_sigattrlog[1]).matched then
  l_0_2 = (string.lower)((this_sigattrlog[1]).utf8p1)
end
local l_0_3 = nil
if (this_sigattrlog[2]).matched then
  l_0_3 = (string.lower)((this_sigattrlog[2]).utf8p1)
end
if l_0_2 ~= l_0_3 then
  return mp.CLEAN
end
return mp.INFECTED

