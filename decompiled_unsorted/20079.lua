-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20079.luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 12000000000 then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[3]).utf8p2
  l_0_1 = (this_sigattrlog[3]).utf8p1
end
if not isLolbinFilename(l_0_1) then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine(l_0_0)
return mp.INFECTED

