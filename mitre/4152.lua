-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4152.luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
local l_0_2 = 0
local l_0_3 = nil
local l_0_4 = {}
if (bm.GetSignatureMatchDuration)() > 100000000 then
  return mp.CLEAN
end
local l_0_5 = 0
if ((bm.get_imagepath)()):lower() ~= nil and IsExcludedByImagePath(((bm.get_imagepath)()):lower()) then
  return mp.CLEAN
end
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp1 ~= nil and (this_sigattrlog[1]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[1]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp1 ~= nil and (this_sigattrlog[2]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[2]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).wp1 ~= nil and (this_sigattrlog[3]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[3]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).wp1 ~= nil and (this_sigattrlog[4]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[4]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).wp1 ~= nil and (this_sigattrlog[5]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[5]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).wp1 ~= nil and (this_sigattrlog[6]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[6]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).wp1 ~= nil and (this_sigattrlog[7]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[7]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).wp1 ~= nil and (this_sigattrlog[8]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[8]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).wp1 ~= nil and (this_sigattrlog[9]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[9]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).wp1 ~= nil and (this_sigattrlog[10]).wp2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[10]).utf8p1)
  addExtensionToList(l_0_3)
  l_0_3 = nil
end
if l_0_5 > 3 then
  return mp.CLEAN
end
for l_0_9,l_0_10 in pairs(l_0_4) do
  local l_0_6 = nil
  -- DECOMPILER ERROR at PC302: Confused about usage of register: R10 in 'UnsetPending'

  if l_0_1 == nil or l_0_2 < #R10_PC302 then
    l_0_1 = l_0_10
    l_0_2 = #R10_PC302
  end
end
if l_0_2 < 8 then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC321: Overwrote pending register: R6 in 'AssignReg'

if (bm.get_current_process_startup_info)() ~= nil then
  do
    local l_0_11, l_0_12, l_0_13 = , ((bm.get_current_process_startup_info)()).ppid
    -- DECOMPILER ERROR at PC323: Confused about usage of register: R5 in 'UnsetPending'

    -- DECOMPILER ERROR at PC329: Confused about usage of register: R5 in 'UnsetPending'

    -- DECOMPILER ERROR at PC335: Confused about usage of register: R6 in 'UnsetPending'

    if IsExcludedByImagePathFileExtension(l_0_11, l_0_1) or IsExcludedByImagePathFileExtensionRegEx(l_0_11, l_0_1) or isParentPackageManager(l_0_12, true) then
      return mp.CLEAN
    end
    ;
    (bm.add_related_string)("ransom_extension", l_0_1, bm.RelatedStringBMReport)
    local l_0_14 = nil
    do
      local l_0_15 = nil
      AppendToRollingQueue("gene_linux_ransom_meta", "cur_image_path", l_0_14)
      -- DECOMPILER ERROR at PC358: Confused about usage of register: R7 in 'UnsetPending'

      AppendToRollingQueue("gene_linux_ransom_meta", "proc_info", l_0_15)
      -- DECOMPILER ERROR at PC363: Confused about usage of register: R7 in 'UnsetPending'

      AppendToRollingQueue("gene_linux_ransom_meta", "appended_ext", l_0_1)
      for l_0_19,l_0_20 in pairs(l_0_4[l_0_1]) do
        local l_0_16, l_0_17 = , {}
        -- DECOMPILER ERROR at PC373: Confused about usage of register: R13 in 'UnsetPending'

        ;
        (bm.add_related_file)(R13_PC373)
        ;
        (table.insert)(l_0_17, R13_PC373)
      end
      -- DECOMPILER ERROR at PC383: Confused about usage of register: R7 in 'UnsetPending'

      -- DECOMPILER ERROR at PC387: Confused about usage of register: R8 in 'UnsetPending'

      AppendToRollingQueue(l_0_16, "renamed_file_path", (table.concat)(l_0_17, ","))
      addRelatedProcess()
      reportRelatedBmHits()
      TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryptionSuspicious")
      ;
      (bm.trigger_sig)("GenericLinuxRansomware", "Type6")
      do return mp.INFECTED end
      -- DECOMPILER ERROR at PC408: freeLocal<0 in 'ReleaseLocals'

    end
  end
end

