-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1418.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  do
    if l_0_0 ~= nil then
      local l_0_2 = nil
      if ((string.lower)(l_0_0)):find("reg%.?e?x?e?%s+delete%s") or ((string.lower)(l_0_0)):find("reg%.?e?x?e?%s+add%s") then
        return mp.CLEAN
      end
      if ((string.lower)(l_0_0)):find("powershell%.exe.*%sset-") or ((string.lower)(l_0_0)):find("passwordexpirywarning", 1, true) then
        return mp.CLEAN
      end
    end
    local l_0_4, l_0_5 = , (bm.get_process_relationships)()
    for l_0_9,l_0_10 in ipairs(l_0_5) do
      local l_0_6 = nil
      -- DECOMPILER ERROR at PC54: Confused about usage of register: R7 in 'UnsetPending'

      -- DECOMPILER ERROR at PC59: Confused about usage of register: R8 in 'UnsetPending'

      if R7_PC54.image_path ~= nil then
        if ((string.lower)(R7_PC54.image_path)):find("windows\\ccm\\", 1, true) then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC72: Confused about usage of register: R8 in 'UnsetPending'

        if ((string.lower)(R7_PC54.image_path)):find("tripwire.*\\twexec%.exe") then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC80: Confused about usage of register: R8 in 'UnsetPending'

        if ((string.lower)(R7_PC54.image_path)):find("ruby%.exe", 1, true) then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC90: Confused about usage of register: R8 in 'UnsetPending'

        if ((string.lower)(R7_PC54.image_path)):find("verodin_backend%.exe", 1, true) then
          return mp.CLEAN
        end
      end
    end
    TrackPidAndTechniqueBM("BM", "T1003.005", "creddiscovery")
    return mp.INFECTED
  end
end

