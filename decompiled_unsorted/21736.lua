-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21736.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2, l_0_3 = nil
if R3_PC3 ~= nil then
  for l_0_7,l_0_8 in ipairs(R5_PC7) do
    local l_0_4, l_0_5 = (bm.get_process_relationships)()
    -- DECOMPILER ERROR at PC9: Confused about usage of register: R8 in 'UnsetPending'

    if R8_PC9.image_path ~= nil and R8_PC9.reason == bm.RELATIONSHIP_INJECTION then
      if not (string.find)((string.lower)((MpCommon.PathToWin32Path)(R8_PC9.image_path)), "\\system32\\svchost.exe", -21, true) or not (string.find)((string.lower)((MpCommon.PathToWin32Path)(R8_PC9.image_path)), "\\syswow64\\svchost.exe", -21, true) then
        return mp.CLEAN
      end
      l_0_2 = R8_PC9.ppid
    end
  end
end
do
  -- DECOMPILER ERROR at PC48: Confused about usage of register: R2 in 'UnsetPending'

  -- DECOMPILER ERROR at PC51: Confused about usage of register: R2 in 'UnsetPending'

  if l_0_4 ~= nil then
    for l_0_13,l_0_14 in ipairs(l_0_4) do
      local l_0_10, l_0_11 = nil
      -- DECOMPILER ERROR at PC54: Confused about usage of register: R8 in 'UnsetPending'

      -- DECOMPILER ERROR at PC61: Confused about usage of register: R8 in 'UnsetPending'

      if R8_PC9.image_path ~= nil then
        l_0_3 = (string.lower)((MpCommon.PathToWin32Path)(R8_PC9.image_path))
        if (sysio.IsFileExists)(l_0_3) and not (mp.IsKnownFriendlyFile)(l_0_3, true, false) then
          (bm.add_related_file)(l_0_3)
        end
      end
    end
  end
  do
    if l_0_2 ~= nil and l_0_3 ~= nil then
      (bm.request_SMS)(l_0_2, "l+")
      ;
      (bm.add_action)("SmsAsyncScanEvent", 1000)
      ;
      (bm.trigger_sig)("Cheddar", "ShellcodeSvchost")
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

