-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/949.luac 

-- params : ...
-- function num : 0
local l_0_0 = 60
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = (bm.get_imagepath)()
if l_0_2 == nil or l_0_2 == "" or l_0_1 == nil or l_0_1.ppid == nil or l_0_1.command_line == nil or l_0_1.command_line == "" then
  return mp.CLEAN
end
local l_0_3 = (mp.GetParentProcInfo)()
if l_0_3 == nil or l_0_3.ppid == nil then
  return mp.CLEAN
end
local l_0_4 = l_0_3.ppid .. ":" .. l_0_2 .. ":Known_File_Renamed"
if IsProcessExcludedFromRansomwareAnalysis() == true then
  return mp.CLEAN
end
local l_0_5 = "Ransomware_Analysis_Generic.J"
local l_0_6 = (MpCommon.GetPersistContextNoPath)(l_0_5)
if l_0_6 ~= nil then
  for l_0_10,l_0_11 in ipairs(l_0_6) do
    if (string.find)(l_0_1.ppid, l_0_11, 1, true) == 1 then
      return mp.CLEAN
    end
  end
end
do
  local l_0_12 = MpCommon.SetPersistContextNoPath
  local l_0_13 = l_0_5
  local l_0_14 = {}
  -- DECOMPILER ERROR at PC78: No list found for R9 , SetList fails

  -- DECOMPILER ERROR at PC79: Overwrote pending register: R10 in 'AssignReg'

  l_0_12(l_0_13, l_0_14, l_0_1.ppid)
  l_0_12 = "Ransomware_Analysis_cmd_Generic.J"
  l_0_13 = MpCommon
  l_0_13 = l_0_13.GetPersistContextNoPath
  l_0_14 = l_0_12
  l_0_13 = l_0_13(l_0_14)
  if l_0_13 ~= nil then
    l_0_14 = ipairs
    l_0_14 = l_0_14(l_0_13)
    for l_0_18,i_2 in l_0_14 do
      if (string.find)(l_0_1.command_line, l_0_18, 1, true) == 1 then
        return mp.CLEAN
      end
    end
  end
  do
    local l_0_19 = nil
    local l_0_20 = nil
    local l_0_21 = nil
    -- DECOMPILER ERROR at PC112: Overwrote pending register: R12 in 'AssignReg'

    ;
    (MpCommon.SetPersistContextNoPath)(l_0_19, l_0_20, l_0_21)
    l_0_20 = {l_0_21}
    -- DECOMPILER ERROR at PC132: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC133: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC134: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC135: Overwrote pending register: R12 in 'AssignReg'

    if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil and (this_sigattrlog[5]).utf8p2 ~= nil then
      l_0_20 = ((this_sigattrlog[5]).utf8p1):match
      l_0_20 = l_0_20(l_0_21, "[^>]*[\\/$]")
      -- DECOMPILER ERROR at PC138: Overwrote pending register: R12 in 'AssignReg'

      l_0_21 = l_0_21(l_0_19, "[^>]*[\\/$]")
      local l_0_22 = nil
      -- DECOMPILER ERROR at PC141: Confused about usage of register: R9 in 'UnsetPending'

      l_0_22 = l_0_22((this_sigattrlog[5]).utf8p1, "%.[^/%.]+$")
      local l_0_23 = nil
      l_0_23 = l_0_23(l_0_19, "%.[^/%.]+$")
      local l_0_24 = nil
      if l_0_21 ~= nil and l_0_20 ~= nil and l_0_20 == l_0_21 and l_0_22 ~= nil and l_0_23 ~= nil and l_0_23 ~= l_0_22 then
        l_0_24 = isFileExtensionOfInterest
        l_0_24 = l_0_24(l_0_19)
        if l_0_24 then
          l_0_24 = IsRansomwareProcessImagePathExtensionExcluded
          l_0_24 = l_0_24(l_0_2, l_0_22)
          if l_0_24 == false then
            l_0_24 = MpCommon
            l_0_24 = l_0_24.SetPersistContextNoPath
            local l_0_25 = nil
            l_0_25 = l_0_4
            local l_0_26 = nil
            local l_0_27 = nil
            -- DECOMPILER ERROR at PC174: Confused about usage of register: R9 in 'UnsetPending'

            l_0_27 = (this_sigattrlog[5]).utf8p1
            l_0_27 = l_0_0
            l_0_24(l_0_25, l_0_26, l_0_27)
            l_0_26 = {l_0_27}
            l_0_24 = analyzeRansomwarePattern5
            l_0_25 = l_0_4
            l_0_26 = "FILE_RENAMED_WITH_KNOWN_EXTN"
            l_0_24 = l_0_24(l_0_25, l_0_26)
            l_0_25 = mp
            l_0_25 = l_0_25.INFECTED
            if l_0_24 == l_0_25 then
              l_0_24 = RemediateProcessTreeForLinux
              l_0_24()
              l_0_24 = mp
              l_0_24 = l_0_24.INFECTED
              return l_0_24
            end
          end
        end
      end
    end
    do
      do
        do return mp.CLEAN end
        -- DECOMPILER ERROR at PC194: Confused about usage of register R9 for local variables in 'ReleaseLocals'

      end
    end
  end
end

