-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21438.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_2 = nil, nil
  end
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_1, l_0_3 = , (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC28: Confused about usage of register: R1 in 'UnsetPending'

    local l_0_4 = nil
    if (string.find)((string.lower)(l_0_3), "regsvr32", 1, true) then
      if l_0_4 ~= nil then
        local l_0_5 = nil
        local l_0_6 = nil
        for l_0_10,l_0_11 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_4)) do
          local l_0_7, l_0_8 = , {[".xls"] = true, xlsx = true, xlsb = true, xltx = true, xltm = true, xlam = true, [".xla"] = true, xlsm = true}
          -- DECOMPILER ERROR at PC60: Confused about usage of register: R9 in 'UnsetPending'

          if (string.len)(R9_PC60) > 4 and (sysio.IsFileExists)(R9_PC60) and l_0_8[(string.sub)(R9_PC60, -4)] then
            (bm.add_related_file)(R9_PC60)
          end
        end
      end
      do
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

