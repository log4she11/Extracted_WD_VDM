-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/406.luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") then
  local l_0_0 = (bm.get_current_process_startup_info)()
  if l_0_0 ~= nil and l_0_0.command_line ~= nil then
    local l_0_1 = (string.lower)(l_0_0.command_line)
    local l_0_2 = {}
    l_0_2["searchindexer.sys"] = true
    l_0_2["svchost.exe"] = true
    l_0_2["mousocoreworker.exe"] = true
    l_0_2["vssvc.exe"] = true
    l_0_2["usocoreworker.exe"] = true
    l_0_2["klnagent.exe"] = true
    l_0_2["adm.exe"] = true
    local l_0_3 = l_0_1:match("\\([^\\]+)$")
    if l_0_2[l_0_3] then
      return mp.CLEAN
    end
    if l_0_1:find("\\dell\\", 1, true) or l_0_1:find("\\lenovo\\", 1, true) then
      return mp.CLEAN
    end
    bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
    AddResearchData(l_0_0.ppid, true)
  end
  do
    do
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

