-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21560.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSIsRemoteSession)
if l_0_1 then
  local l_0_2 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSUserName)
  local l_0_3 = (bm.get_imagepath)()
  local l_0_4 = "SuspTool_" .. l_0_2
  local l_0_5 = (MpCommon.QueryPersistContextNoPath)(l_0_4, l_0_3)
  if not l_0_5 then
    (MpCommon.AppendPersistContextNoPath)(l_0_4, l_0_3, 28800)
  end
  local l_0_6 = (MpCommon.GetPersistContextCountNoPath)(l_0_4)
  if l_0_6 > 2 then
    local l_0_7 = (MpCommon.QuerySessionInformation)(l_0_0.ppid, MpCommon.WTSClientAddress)
    ;
    (bm.add_related_string)("bmurl", l_0_7.Address, bm.RelatedStringBMReport)
    local l_0_8 = (MpCommon.GetPersistContextNoPath)(l_0_4)
    if l_0_8 then
      for l_0_12,l_0_13 in ipairs(l_0_8) do
        (bm.add_related_file)(l_0_13)
      end
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

