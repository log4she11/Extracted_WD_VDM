-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1417.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if (string.match)(l_0_0, "\\installing\\assistant_installer.exe") ~= nil then
  return mp.CLEAN
end
if (this_sigattrlog[1]).matched then
  if (this_sigattrlog[1]).utf8p1 ~= nil then
    if (string.match)((this_sigattrlog[1]).utf8p1, "\\\\BitTorrent$") ~= nil then
      return mp.CLEAN
    end
    if (string.match)((this_sigattrlog[1]).utf8p1, "\\\\uTorrent$") ~= nil then
      return mp.CLEAN
    end
  end
  if (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_1 = (string.match)((this_sigattrlog[1]).utf8p2, "%a:[^:\"]+%.exe")
    if l_0_1 then
      (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_0_1))
    end
    local l_0_2 = (string.match)((this_sigattrlog[1]).utf8p2, "%a:[^:\"]+%.ps1")
    if l_0_2 then
      (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_0_2))
    end
    local l_0_3 = (string.match)((this_sigattrlog[1]).utf8p2, "%a:[^:\"]+%.bat")
    if l_0_3 then
      (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_0_3))
    end
    local l_0_4 = (string.match)((this_sigattrlog[1]).utf8p2, "%a:[^:\"]+%.dll")
    if l_0_4 then
      (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)(l_0_4))
    end
  end
end
do
  return mp.INFECTED
end

