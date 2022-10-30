-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21598.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  local l_0_1 = (string.lower)(l_0_0.command_line)
  if l_0_1 ~= nil and (string.sub)(l_0_1, -1) == "\"" then
    if (string.find)(l_0_1, "\\program files (x86)\\", 1, true) or (string.find)(l_0_1, "\\program files\\", 1, true) or (string.find)(l_0_1, "qqpcmgr", 1, true) then
      return mp.CLEAN
    end
    local l_0_2 = (string.sub)(l_0_1, -4, -2)
    if l_0_2 == ".ax" then
      return mp.CLEAN
    end
    local l_0_3 = (string.sub)(l_0_1, -5, -2)
    if l_0_3 ~= ".dll" and l_0_3 ~= ".ocx" and l_0_3 ~= ".exe" and l_0_3 ~= ".cpl" and l_0_3 ~= ".spi" and l_0_3 ~= ".tlb" and l_0_3 ~= ".txt" and l_0_3 ~= ".ime" then
      (bm.request_SMS)(l_0_0.ppid, "m")
      ;
      (bm.add_action)("SmsAsyncScanEvent", 1)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

