-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/654.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)((string.sub)((mp.ContextualExpandEnvironmentVariables)(l_0_0), 2, 11))
    if l_0_1 ~= ":\\windows\\" then
      (bm.add_related_file)(l_0_0)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

