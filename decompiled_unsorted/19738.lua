-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19738.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  (MpCommon.RequestSmsOnProcess)(l_0_0.ppid, MpCommon.SMS_SCAN_MED)
end
local l_0_1 = (bm.get_imagepath)()
local l_0_2, l_0_3 = (bm.get_process_relationships)()
for l_0_7,l_0_8 in ipairs(l_0_3) do
  if l_0_8.image_path == l_0_1 then
    (MpCommon.RequestSmsOnProcess)(l_0_8.ppid, MpCommon.SMS_SCAN_MED)
  end
end
return mp.INFECTED

