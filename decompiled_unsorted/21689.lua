-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21689.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p1 == nil or (this_sigattrlog[4]).matched) and (this_sigattrlog[4]).utf8p1 ~= nil then
      local l_0_1 = (this_sigattrlog[3]).utf8p1
    else
    end
    -- DECOMPILER ERROR at PC68: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p1 == nil or (this_sigattrlog[6]).matched) and (this_sigattrlog[6]).utf8p1 ~= nil then
        local l_0_2, l_0_3, l_0_4 = (this_sigattrlog[5]).utf8p1
      end
      -- DECOMPILER ERROR at PC69: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC71: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_2 == nil or #l_0_2 < 4 then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC79: Confused about usage of register: R0 in 'UnsetPending'

      local l_0_5, l_0_6 = , (string.gsub)(l_0_2, "\\", "")
      if l_0_2 == nil or l_0_2 ~= 2 then
        return mp.CLEAN
      end
      local l_0_7 = nil
      -- DECOMPILER ERROR at PC103: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC108: Confused about usage of register: R3 in 'UnsetPending'

      if not (this_sigattrlog[1]).matched or (this_sigattrlog[1]).utf8p2 == nil or nil ~= nil then
        local l_0_8 = nil
        for l_0_12,l_0_13 in ipairs((mp.GetExecutablesFromCommandLine)(nil)) do
          local l_0_9 = nil
          -- DECOMPILER ERROR at PC118: Confused about usage of register: R9 in 'UnsetPending'

          if (string.find)((string.lower)(R9_PC118), "\\javaw.exe") == nil and (sysio.IsFileExists)(R9_PC118) then
            (bm.add_threat_file)(R9_PC118)
          end
        end
      end
      do
        return mp.INFECTED
      end
    end
  end
end

