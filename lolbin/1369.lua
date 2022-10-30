-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1369.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2, l_0_3 = nil
if pcall(mp.GetParentProcInfo) and mp.GetParentProcInfo ~= nil then
  l_0_2 = (mp.GetParentProcInfo).ppid
  l_0_3 = (mp.GetParentProcInfo).image_path
end
if l_0_2 ~= nil and l_0_3 ~= nil then
  local l_0_4 = nil
  local l_0_5 = nil
  if ({["winlogon.exe"] = true, ["explorer.exe"] = true, ["sihost.exe"] = true})[l_0_3:match("([^\\]+)$")] then
    return mp.CLEAN
  end
  if IsPidExcluded(l_0_2) then
    return mp.CLEAN
  end
  if IsTacticObservedForPid(l_0_2, "webshell_parent") or IsTacticObservedForPid(l_0_2, "webshell_childproc") then
    return mp.INFECTED
  end
  TrackPidAndTechnique(l_0_2, "T1218.011", "lolbin_rundll")
end
do
  return mp.LOWFI
end

