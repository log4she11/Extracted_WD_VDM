-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21728.luac 

-- params : ...
-- function num : 0
add_related_file_wrapper = function(l_1_0)
  -- function num : 0_0
  if l_1_0 ~= nil then
    local l_1_1 = (mp.GetExecutablesFromCommandLine)(l_1_0)
    for l_1_5,l_1_6 in ipairs(l_1_1) do
      l_1_6 = (mp.ContextualExpandEnvironmentVariables)(l_1_6)
      if (sysio.IsFileExists)(l_1_6) then
        (bm.add_related_file)(l_1_6)
      end
    end
  end
end

if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
  add_related_file_wrapper((this_sigattrlog[3]).utf8p1)
end
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  add_related_file_wrapper((this_sigattrlog[3]).utf8p2)
end
local l_0_0 = (MpCommon.GetPersistContextNoPath)("bm_uacbypass_connmgr")
if l_0_0 then
  for l_0_4,l_0_5 in ipairs(l_0_0) do
    local l_0_6, l_0_7 = (string.match)(l_0_5, "(.+);ImagePath:(.+)")
    if l_0_7 then
      l_0_7 = (MpCommon.PathToWin32Path)(l_0_7)
      if (sysio.IsFileExists)(l_0_7) then
        (mp.ReportLowfi)(l_0_7, 3039453400)
      end
    end
  end
end
do
  return mp.INFECTED
end

