-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21302.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = (this_sigattrlog[2]).utf8p2
    else
    end
    if not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p2 == nil or (this_sigattrlog[4]).utf8p2 == nil then
      return mp.CLEAN
    end
    local l_0_6 = nil
    local l_0_7 = {[".vbs"] = true}
    for l_0_11,l_0_12 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_6)) do
      local l_0_8 = nil
      -- DECOMPILER ERROR at PC72: Confused about usage of register: R7 in 'UnsetPending'

      if (string.len)(R7_PC72) > 4 and (sysio.IsFileExists)(R7_PC72) and l_0_7[(string.sub)(R7_PC72, -4)] then
        (bm.add_threat_file)(l_0_13)
      end
    end
    return mp.INFECTED
  end
end

