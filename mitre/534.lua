-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/534.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
local l_0_1 = l_0_0:match("\\([^\\]+)$")
local l_0_2 = {}
l_0_2["svchost.exe"] = true
l_0_2["lsass.exe"] = true
l_0_2["services.exe"] = true
l_0_2["connectionclient.exe"] = true
if l_0_2[l_0_1] then
  return mp.CLEAN
end
local l_0_3 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_3 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_3 = (this_sigattrlog[2]).utf8p2
  end
end
if l_0_3 ~= nil then
  local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_3)
  for l_0_8,l_0_9 in ipairs(l_0_4) do
    l_0_9 = (mp.ContextualExpandEnvironmentVariables)(l_0_9)
    if (sysio.IsFileExists)(l_0_9) then
      (bm.add_related_file)(l_0_9)
    end
  end
end
do
  l_0_4 = pcall
  l_0_4 = l_0_4(bm.get_current_process_startup_info)
  local l_0_10, l_0_11 = nil
  if l_0_4 then
    l_0_11 = bm_AddRelatedFileFromCommandLine
    l_0_11(l_0_10.command_line, nil, nil, 1)
  end
  l_0_11 = TrackPidAndTechniqueBM
  l_0_11(l_0_10.ppid, "T1547.005", "ssp_tamper")
  l_0_11 = AddTacticForPid
  l_0_11(l_0_10.ppid, "tt-thresholdmet")
  l_0_11 = mp
  l_0_11 = l_0_11.INFECTED
  return l_0_11
end

