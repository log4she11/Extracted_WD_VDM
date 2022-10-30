-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/106.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC5: Overwrote pending register: R1 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_1, l_0_4 = nil, nil
  l_0_1 = (this_sigattrlog[1]).utf8p1
  local l_0_0 = nil
else
  do
    do
      if (this_sigattrlog[2]).matched then
        local l_0_2 = (this_sigattrlog[2]).utf8p1
      end
      -- DECOMPILER ERROR at PC21: Confused about usage of register: R0 in 'UnsetPending'

      local l_0_3 = (string.sub)(l_0_2, 1, -#"\\parameters" - 2)
      local l_0_5 = "Shutdown"
      local l_0_6 = nil
      local l_0_7 = (sysio.GetRegValueAsString)((sysio.RegOpenKey)(l_0_3:match("(.+)\\%x+")), "FileSysPath")
      local l_0_8, l_0_9 = ((sysio.GetRegValueAsString)(l_0_6, "GPOName")):lower(), parseGpoSysvolPath(l_0_7)
      if l_0_8 ~= l_0_7 then
        (bm.add_related_string)("GPO-error", "guid mismatch between network FileSysPath and GPOName registry values", bm.RelatedStringBMReport)
      end
      local l_0_10 = nil
      local l_0_11 = nil
      local l_0_12 = nil
      local l_0_13 = l_0_7 .. "\\Scripts\\" .. l_0_5 .. "\\" .. (sysio.GetRegValueAsString)((sysio.RegOpenKey)(l_0_3), "Script")
      if getGpoDataStorePath(l_0_9, l_0_8) == nil then
        return mp.CLEAN
      end
      local l_0_14 = nil
      local l_0_15 = getGpoDataStorePath(l_0_9, l_0_8) .. "\\Scripts\\" .. l_0_5 .. "\\" .. l_0_12
      -- DECOMPILER ERROR at PC98: Confused about usage of register: R12 in 'UnsetPending'

      if ({["{31b2f340-016d-11d2-945f-00c04fb984f9}"] = "Default Domain Policy", ["{6ac1786c-016f-11d2-945f-00c04fb984f9}"] = "Default Domain Controllers Policy"})[l_0_8] then
        (bm.add_related_string)("GPO-script-suspicious", ({["{31b2f340-016d-11d2-945f-00c04fb984f9}"] = "Default Domain Policy", ["{6ac1786c-016f-11d2-945f-00c04fb984f9}"] = "Default Domain Controllers Policy"})[l_0_8], bm.RelatedStringBMReport)
      end
      local l_0_16 = nil
      if GetRollingQueueKeyValue("GPO-Script-LocalPath-Current", l_0_15) ~= (sysio.GetFileSize)(l_0_15) then
        AppendToRollingQueue("GPO-Script-NetworkPath-History", l_0_13, (sysio.GetFileSize)(l_0_15), 604800, 300, 0)
        AppendToRollingQueue("GPO-Script-LocalPath-History", l_0_15, (sysio.GetFileSize)(l_0_15), 604800, 300, 0)
        AppendToRollingQueue("GPO-Script-LocalPath-Current", l_0_15, (sysio.GetFileSize)(l_0_15), 604800, 300, 1)
        ;
        (bm.add_related_file)(l_0_15)
      end
      return mp.INFECTED
    end
  end
end

