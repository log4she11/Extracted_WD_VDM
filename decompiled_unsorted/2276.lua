-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2276.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("Behavior:Win32/BlockMpTamper")
if #l_0_0 == 0 or l_0_0 == nil then
  return mp.CLEAN
end
for l_0_4,l_0_5 in ipairs(l_0_0) do
  (bm.add_related_string)("RelatedBMHits", l_0_5, bm.RelatedStringBMReport)
end
return mp.INFECTED

