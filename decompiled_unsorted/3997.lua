-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3997.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  else
  end
  -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_4 = nil
    local l_0_5, l_0_6 = (mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2), (bm.get_process_relationships)()
    for l_0_10,l_0_11 in ipairs(l_0_5) do
      local l_0_7 = nil
      -- DECOMPILER ERROR at PC32: Confused about usage of register: R8 in 'UnsetPending'

      if (sysio.IsFileExists)(R8_PC32) then
        (bm.add_related_file)(R8_PC32)
      end
    end
    for l_0_15,l_0_16 in ipairs(l_0_6) do
      local l_0_12 = nil
      -- DECOMPILER ERROR at PC48: Confused about usage of register: R8 in 'UnsetPending'

      ;
      (bm.add_related_file)(R8_PC32.image_path)
    end
  end
  do
    l_0_5 = mp
    l_0_5 = l_0_5.INFECTED
    return l_0_5
  end
end

