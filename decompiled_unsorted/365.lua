-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/365.luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  l_0_0 = (this_sigattrlog[1]).utf8p1
end
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  l_0_1 = (this_sigattrlog[2]).utf8p1
end
if l_0_0 ~= nil and l_0_1 ~= nil then
  l_0_0 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
  l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_1)
  if (mp.IsKnownFriendlyFile)(l_0_0, true, false) and (sysio.IsFileExists)(l_0_1) and not (mp.IsKnownFriendlyFile)(l_0_1, true, false) then
    (bm.add_related_file)(l_0_1)
    return mp.INFECTED
  end
end
return mp.CLEAN

