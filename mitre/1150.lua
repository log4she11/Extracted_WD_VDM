-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1150.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_0 = nil
  if IsTacticObservedForPid(l_0_0, "webshell_parent") then
    local l_0_1, l_0_2 = (bm.get_process_relationships)()
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      TrackPidAndTechniqueBM(l_0_7.ppid, "T1505.003", "webshell_childproc", 28800)
    end
    local l_0_8 = nil
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      l_0_8 = (this_sigattrlog[2]).utf8p2
      if l_0_8 ~= nil then
        l_0_8 = (string.lower)(l_0_8)
        local l_0_9 = (mp.GetExecutablesFromCommandLine)(l_0_8)
        for l_0_13,l_0_14 in ipairs(l_0_9) do
          l_0_14 = (mp.ContextualExpandEnvironmentVariables)(l_0_14)
          if (sysio.IsFileExists)(l_0_14) then
            (bm.add_related_file)(l_0_14)
          end
        end
      end
    end
    do
      do
        l_0_9 = mp
        l_0_9 = l_0_9.INFECTED
        do return l_0_9 end
        return mp.CLEAN
      end
    end
  end
end

