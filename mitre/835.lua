-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/835.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (l_0_0:sub(1, 2) == "\\\\" or l_0_0:sub(1, 3) == "\"\\\\" or l_0_0:sub(1, 3) == "\'\\\\") then
    if IsPidExcluded((this_sigattrlog[4]).ppid) then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC54: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC61: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC68: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0:find("\\sysvol", 1, true) or l_0_0:find("\\netlogon", 1, true) or l_0_0:find("\\ccm", 1, true) or l_0_0:find("\\sccm", 1, true) then
      return mp.CLEAN
    end
    local l_0_9 = nil
    local l_0_10 = {["node.exe"] = true, ["java.exe"] = true, ["ruby.exe"] = true, ["cefsharp.browsersubprocess.exe"] = true}
    if l_0_10[l_0_9:match("\\([^\\]+)$")] then
      return mp.CLEAN
    end
    if is_excluded_parent_proc_auto() then
      return mp.CLEAN
    end
    TrackPidAndTechniqueBM((this_sigattrlog[4]).ppid, "T1021.002", "exec_from_remoteshare")
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

