-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2572.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).matched then
  local l_0_0 = nil
  if (this_sigattrlog[3]).utf8p2 ~= nil then
    l_0_0 = (string.lower)((this_sigattrlog[3]).utf8p2)
  end
  if l_0_0 ~= nil then
    local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    for l_0_5,l_0_6 in ipairs(l_0_1) do
      l_0_6 = (mp.ContextualExpandEnvironmentVariables)(l_0_6)
      if (sysio.IsFileExists)(l_0_6) then
        (bm.add_related_file)(l_0_6)
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.INFECTED
  return l_0_0
end

