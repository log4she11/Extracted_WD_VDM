-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20506.luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[1]).matched then
  l_0_0 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched then
    l_0_0 = (this_sigattrlog[2]).utf8p2
  end
end
if l_0_0 ~= nil and (string.len)(l_0_0) > 3 then
  l_0_0 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
  if (sysio.IsFileExists)(l_0_0) and (mp.IsKnownFriendlyFile)(l_0_0, true, false) == false then
    (bm.add_related_file)(l_0_0)
  end
end
return mp.INFECTED

