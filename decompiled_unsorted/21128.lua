-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21128.luac 

-- params : ...
-- function num : 0
local l_0_0 = "trickbot_nri_parent"
local l_0_1 = (bm.get_imagepath)()
local l_0_2 = (bm.get_current_process_startup_info)()
local l_0_3 = {}
local l_0_4, l_0_5 = (bm.get_process_relationships)()
for l_0_9,l_0_10 in ipairs(l_0_5) do
  local l_0_11 = (string.format)("%s;%s;%s", l_0_10.ppid, l_0_1, l_0_2.command_line)
  ;
  (table.insert)(l_0_3, l_0_11)
end
if (MpCommon.GetPersistContextCountNoPath)(l_0_0) > 0 then
  for l_0_15,l_0_16 in ipairs(l_0_3) do
    (MpCommon.AppendPersistContextNoPath)(l_0_0, l_0_16, 3600)
  end
else
  do
    ;
    (MpCommon.SetPersistContextNoPath)(l_0_0, l_0_3, 3600)
    return mp.INFECTED
  end
end

