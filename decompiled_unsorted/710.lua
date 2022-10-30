-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/710.luac 

-- params : ...
-- function num : 0
if (mp.IsKnownFriendlyFile)((bm.get_imagepath)(), true, true) == true then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
end
if l_0_0:find("\\printconfig.dll") then
  return mp.CLEAN
else
  if l_0_0:find("\\windows\\system32\\hpzipm12.dll") then
    return mp.CLEAN
  else
    if l_0_0:find("\\windows\\system32\\w32time.dll") then
      return mp.CLEAN
    end
  end
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
do
  l_0_1 = mp
  l_0_1 = l_0_1.INFECTED
  return l_0_1
end

