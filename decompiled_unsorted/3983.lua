-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3983.luac 

-- params : ...
-- function num : 0
local l_0_0 = 5
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = "cmd_worker_counter" .. l_0_1.ppid
local l_0_3 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_3 = (this_sigattrlog[1]).utf8p2
else
  return mp.CLEAN
end
local l_0_4 = AddToAtomicCounter(l_0_2, 1, 900)
do
  if l_0_4 then
    local l_0_5 = l_0_4 % l_0_0 + 1
    ;
    (bm.trigger_sig)("CmdLowfiHit" .. l_0_5, l_0_3)
  end
  return mp.CLEAN
end

