-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/210.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

do
  if this_sigattrlog[1] ~= nil and (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  else
  end
  if this_sigattrlog[2] ~= nil and (this_sigattrlog[1]).matched then
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

    if not this_sigattrlog[2] or not (this_sigattrlog[2]).matched then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_5 = nil
    if not (this_sigattrlog[2]).utf8p2 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC43: Confused about usage of register: R1 in 'UnsetPending'

    local l_0_6, l_0_7 = , (string.match)((this_sigattrlog[2]).utf8p2, "(%d+);regionsize:(%d+)")
    if not l_0_7 or not (this_sigattrlog[2]).utf8p2 then
      return mp.CLEAN
    end
    local l_0_8 = nil
    if tonumber(R5_PC55) <= 143360 then
      R5_PC55 = mp
      R5_PC55 = R5_PC55.CLEAN
      return R5_PC55
    end
    if tonumber(R5_PC55) >= 204800 then
      R5_PC55 = mp
      R5_PC55 = R5_PC55.CLEAN
      return R5_PC55
    end
    R5_PC55 = l_0_5.ppid
    local l_0_9 = nil
    if not R5_PC55 then
      return mp.CLEAN
    end
    if (MpCommon.IsFriendlyProcess)(R5_PC55) then
      return mp.CLEAN
    end
    local l_0_10, l_0_11 = , pcall(bm.get_imagepath)
    if l_0_11 then
      local l_0_12 = nil
      local l_0_13 = nil
      local l_0_14 = (string.format)("%s:%s", ((bm.get_imagepath):match("\\([^\\]+)$")):lower(), l_0_8)
      if ({["invcol.exe:492544"] = true, ["setup.exe:172032"] = true, ["msiexec.exe:172032"] = true, ["outlook.exe:589824"] = true, ["outlook.exe:388608"] = true, ["outlook.exe:385536"] = true, ["outlook.exe:585728"] = true, ["invcol.exe:591872"] = true, ["concentr.exe:159744"] = true, ["t.exe:532480"] = true, ["invcol.exe:424448"] = true, ["invcol.exe:424960"] = true, ["lspevmon.exe:787968"] = true, ["t.exe:478720"] = true, ["ccservice.exe:212480"] = true, ["lspcmr.exe:787968"] = true, ["wfcrun32.exe:159744"] = true, ["issuser.exe:173056"] = true, ["connexus.exe:230912"] = true, ["adapplicationmanager-installer.exe:299008"] = true})[l_0_14] then
        return mp.CLEAN
      end
    end
    do
      ;
      (bm.add_related_string)("vm_sz", l_0_8, bm.RelatedStringBMReport)
      return mp.INFECTED
    end
  end
end

