-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4135.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
local l_0_3 = nil
local l_0_4 = "remote_file_created_taint"
local l_0_5 = {}
local l_0_6 = {"/bin/python", "/bin/pip"}
local l_0_7 = {"/bin/python", "-m pip"}
-- DECOMPILER ERROR at PC18: No list found for R3 , SetList fails

l_0_6 = this_sigattrlog
l_0_6 = l_0_6[2]
l_0_6 = l_0_6.matched
if l_0_6 then
  l_0_6 = this_sigattrlog
  l_0_6 = l_0_6[2]
  l_0_3 = l_0_6.utf8p1
else
  l_0_6 = this_sigattrlog
  l_0_6 = l_0_6[3]
  l_0_6 = l_0_6.matched
  if l_0_6 then
    l_0_6 = this_sigattrlog
    l_0_6 = l_0_6[3]
    l_0_3 = l_0_6.utf8p1
  else
    l_0_6 = this_sigattrlog
    l_0_6 = l_0_6[4]
    l_0_6 = l_0_6.matched
    if l_0_6 then
      l_0_6 = this_sigattrlog
      l_0_6 = l_0_6[4]
      l_0_3 = l_0_6.utf8p1
    else
      l_0_6 = this_sigattrlog
      l_0_6 = l_0_6[6]
      l_0_6 = l_0_6.matched
      if l_0_6 then
        l_0_6 = this_sigattrlog
        l_0_6 = l_0_6[6]
        l_0_3 = l_0_6.utf8p1
      else
        l_0_6 = this_sigattrlog
        l_0_6 = l_0_6[5]
        l_0_6 = l_0_6.matched
        if l_0_6 then
          l_0_6 = this_sigattrlog
          l_0_6 = l_0_6[5]
          l_0_3 = l_0_6.utf8p1
        else
          l_0_6 = this_sigattrlog
          l_0_6 = l_0_6[7]
          l_0_6 = l_0_6.matched
          if l_0_6 then
            l_0_6 = this_sigattrlog
            l_0_6 = l_0_6[7]
            l_0_3 = l_0_6.utf8p1
          end
        end
      end
    end
  end
end
l_0_6 = this_sigattrlog
l_0_6 = l_0_6[9]
l_0_6 = l_0_6.matched
if l_0_6 then
  l_0_6 = this_sigattrlog
  l_0_6 = l_0_6[9]
  l_0_2 = l_0_6.utf8p1
end
if l_0_3 ~= nil and l_0_2 ~= nil then
  l_0_6 = isTainted
  l_0_7 = l_0_3
  -- DECOMPILER ERROR at PC86: Overwrote pending register: R6 in 'AssignReg'

  l_0_6 = l_0_6(l_0_7, {"/bin/python", "/bin/yum"})
  if l_0_6 then
    l_0_6 = bm
    l_0_6 = l_0_6.get_current_process_startup_info
    l_0_6 = l_0_6()
    l_0_7 = bm
    l_0_7 = l_0_7.get_imagepath
    l_0_7 = l_0_7()
    -- DECOMPILER ERROR at PC107: Overwrote pending register: R7 in 'AssignReg'

    if l_0_6 ~= nil and l_0_6.ppid ~= nil and l_0_7 ~= nil and l_0_6.command_line ~= nil then
      for i_1,i_2 in ipairs({"/bin/ruby", "/opt/microsoft/omsagent"}) do
        if (string.find)(l_0_7, i_2[1], 1, true) and (string.find)(l_0_6.command_line, i_2[2], 1, true) then
          return mp.CLEAN
        end
      end
      taint(l_0_2, l_0_4, 3600)
      TrackPidAndTechniqueBM("BM", "T1105", "CommandAndControl")
      AppendToRollingQueue("queue_pid_taintfactory_a", l_0_6.ppid, 1, 600)
      local l_0_13, l_0_14 = (bm.get_process_relationships)(l_0_6.ppid)
      for l_0_18,l_0_19 in ipairs(l_0_13) do
        (bm.add_related_process)(l_0_19.ppid)
        TrackPidAndTechniqueBM(l_0_19.ppid, "T1105", "CommandAndControl")
      end
      return mp.INFECTED
    end
  end
end
do
  l_0_6 = mp
  l_0_6 = l_0_6.CLEAN
  return l_0_6
end

