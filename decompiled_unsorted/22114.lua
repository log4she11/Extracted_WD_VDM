-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22114.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  local l_0_7 = (string.lower)(l_0_6.image_path)
  if (string.find)(l_0_7, "perfmon.exe", 1, true) or (string.find)(l_0_7, "mmc.exe", 1, true) or (string.find)(l_0_7, "werfault.exe", 1, true) or (string.find)(l_0_7, "wermgr.exe", 1, true) or (string.find)(l_0_7, "control.exe", 1, true) or (string.find)(l_0_7, "openwith.exe", 1, true) or (string.find)(l_0_7, "iexplore.exe", 1, true) or (string.find)(l_0_7, "msedge.exe", 1, true) or (string.find)(l_0_7, "\\chrome", 1, true) or (string.find)(l_0_7, "\\opera", 1, true) or (string.find)(l_0_7, "browser", 1, true) or (string.find)(l_0_7, "\\program files", 1, true) or (string.find)(l_0_7, "\\tencent", 1, true) or (string.find)(l_0_7, "\\sogou", 1, true) or (string.find)(l_0_7, "\\qq", 1, true) or (string.find)(l_0_7, "\\yandex", 1, true) or (string.find)(l_0_7, "\\360se", 1, true) or (string.find)(l_0_7, "launchwinapp.exe", 1, true) or (string.find)(l_0_7, "sgtool.exe", 1, true) or (string.find)(l_0_7, "\\vivaldi", 1, true) or (string.find)(l_0_7, "\\onedrive", 1, true) or (string.find)(l_0_7, "firefox.exe", 1, true) then
    return mp.CLEAN
  end
  local l_0_8 = (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_6.ppid)
  local l_0_9 = (mp.bitand)(l_0_6.reason_ex, bm.RELATIONSHIP_CREATED)
  if l_0_9 == bm.RELATIONSHIP_CREATED and l_0_8.IntegrityLevel == MpCommon.SECURITY_MANDATORY_HIGH_RID then
    (bm.add_related_process)(l_0_6.ppid)
    return mp.INFECTED
  end
end
return mp.CLEAN

