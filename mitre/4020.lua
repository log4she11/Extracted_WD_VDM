-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4020.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC5: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1 = "webserver_childproc"
    end
    -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

    if not l_0_1 then
      return mp.CLEAN
    end
    local l_0_2, l_0_3 = , (bm.get_process_relationships)()
    for l_0_7,l_0_8 in ipairs(R4_PC30) do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC34: Confused about usage of register: R7 in 'UnsetPending'

      if (mp.bitand)(R7_PC34.reason_ex, 1) == 1 then
        TrackPidAndTechniqueBM(R7_PC34.ppid, "T1190", l_0_2, 7200)
      end
    end
    return mp.CLEAN
  end
end

