-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1048.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.ppid ~= nil and l_0_0.command_line ~= nil then
    local l_0_1 = (string.lower)(l_0_0.command_line)
    if (string.find)(l_0_1, "/create", 1, true) and (string.find)(l_0_1, "/ru", 1, true) and (string.find)(l_0_1, "authority\\system", 1, true) and (string.find)(l_0_1, "/tn", 1, true) and (string.find)(l_0_1, "/tr", 1, true) and (string.find)(l_0_1, "regsvr32.exe", 1, true) and (string.find)(l_0_1, "/sc", 1, true) and (string.find)(l_0_1, "/st", 1, true) and (string.find)(l_0_1, "/et", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

