-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22209.luac 

-- params : ...
-- function num : 0
map_read = function(l_1_0, l_1_1)
  -- function num : 0_0
  if (pe.mmap_va_nofastfail)(l_1_0, l_1_1) == "" then
    return (mp.readfile)((pe.foffset_va)(l_1_0), l_1_1)
  end
end

search_const = function(l_2_0, l_2_1, l_2_2)
  -- function num : 0_1
  local l_2_3 = (mp.readfile)((pe.foffset_va)(l_2_0), l_2_1)
  local l_2_8 = string.find
  l_2_8 = l_2_8(l_2_3, "�E" .. (string.char)(l_2_2), 1, true)
  local l_2_4 = nil
  if l_2_8 ~= nil then
    l_2_4 = mp
    l_2_4 = l_2_4.readu_u32
    local l_2_5 = nil
    l_2_5 = l_2_3
    local l_2_6 = nil
    l_2_6 = l_2_8 + 3
    do
      local l_2_7 = nil
      do return l_2_4(l_2_5, l_2_6) end
      -- DECOMPILER ERROR at PC28: Confused about usage of register R6 for local variables in 'ReleaseLocals'

      do return nil end
      -- DECOMPILER ERROR at PC30: Confused about usage of register R5 for local variables in 'ReleaseLocals'

    end
  end
end

search_const_32 = function(l_3_0, l_3_1, l_3_2)
  -- function num : 0_2
  local l_3_3 = (mp.readfile)((pe.foffset_va)(l_3_0), l_3_1)
  local l_3_9, l_3_10, l_3_11, l_3_12 = string.find, l_3_3, "ǅ", (string.char)((mp.bitand)(l_3_2, 255))
  l_3_11 = l_3_11 .. l_3_12 .. (string.char)((mp.bitand)((mp.shr32)(l_3_2, 8), 255))
  l_3_12 = 1
  local l_3_8 = true
  l_3_9 = l_3_9(l_3_10, l_3_11, l_3_12, l_3_8)
  local l_3_4 = nil
  if l_3_9 ~= nil then
    l_3_10 = mp
    l_3_10 = l_3_10.readu_u32
    local l_3_5 = nil
    l_3_11 = l_3_3
    local l_3_6 = nil
    l_3_12 = l_3_9 + 6
    local l_3_7 = nil
    return l_3_10(l_3_11, l_3_12)
  end
  do
    do
      do return nil end
      -- DECOMPILER ERROR at PC46: Confused about usage of register R6 for local variables in 'ReleaseLocals'

    end
  end
end

search_const_32_esp = function(l_4_0, l_4_1, l_4_2)
  -- function num : 0_3
  local l_4_3 = nil
  local l_4_4 = nil
  local l_4_5 = nil
  for l_4_9 = 1, 10 do
    local l_4_6 = (string.find)(map_read(l_4_0, l_4_1), "Ǆ$" .. (string.char)((mp.bitand)(l_4_2, 255)) .. (string.char)((mp.bitand)((mp.shr32)(l_4_2, 8), 255)), 1, true)
    if l_4_6 ~= nil then
      l_4_4 = (mp.readu_u32)(l_4_5, l_4_6 + 7)
      if l_4_1 - l_4_6 - 11 > 11 then
        l_4_5 = map_read(l_4_0 + l_4_6 + 11, l_4_1 - l_4_6 - 11)
        l_4_6 = (string.find)(l_4_5, "Ǆ$" .. (string.char)((mp.bitand)(l_4_2, 255)) .. (string.char)((mp.bitand)((mp.shr32)(l_4_2, 8), 255)), 1, true)
      else
        break
      end
    else
      break
    end
  end
  do
    return l_4_4
  end
end

;
(mp.readprotection)(false)
if (hstrlog[1]).matched then
  local l_0_0 = (hstrlog[1]).VA
  local l_0_1 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_0 - 5), 1), 1)
  local l_0_2 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_0 - 3), 1), 1)
  local l_0_3 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_0 - 1), 1), 1)
  local l_0_4 = search_const(l_0_0 - 256, 256, l_0_1)
  if l_0_4 ~= nil then
    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
    ;
    (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, (mp.bitand)(l_0_3 - (mp.bitand)((mp.bitxor)(l_0_2, l_0_4), 255), 255)))
  end
else
  do
    if (hstrlog[2]).matched then
      local l_0_5 = (hstrlog[2]).VA
      local l_0_6 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_5 - 15), 1), 1)
      local l_0_7 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_5 - 13), 1), 1)
      local l_0_8 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_5 - 8), 1), 1)
      local l_0_9 = search_const(l_0_5 - 256, 256, l_0_6)
      if l_0_9 ~= nil then
        (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
        ;
        (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, (mp.bitand)(-(l_0_8 + (mp.bitand)((mp.bitxor)(l_0_7, l_0_9), 255)), 255)))
      end
    else
      do
        if (hstrlog[3]).matched then
          local l_0_10 = (hstrlog[3]).VA
          local l_0_11 = (mp.readu_u32)((mp.readfile)((pe.foffset_va)(l_0_10 - 20), 4), 1)
          local l_0_12 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_10 - 15), 1), 1)
          local l_0_13 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_10 - 10), 1), 1)
          local l_0_14 = search_const_32(l_0_10 - 512, 512, l_0_11)
          if l_0_14 ~= nil then
            (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
            ;
            (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, (mp.bitand)(-(l_0_13 + (mp.bitand)((mp.bitxor)(l_0_12, l_0_14), 255)), 255)))
          end
        else
          do
            if (hstrlog[4]).matched then
              local l_0_15 = (hstrlog[4]).VA
              local l_0_16 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_15 - 6), 1), 1)
              local l_0_17 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_15 - 3), 1), 1)
              local l_0_18 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_15 - 1), 1), 1)
              local l_0_19 = search_const(l_0_15 - 512, 512, l_0_16)
              if l_0_19 ~= nil then
                (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                ;
                (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, (mp.bitand)(l_0_18 - (mp.bitand)((mp.bitxor)(l_0_17, l_0_19), 255), 255)))
              end
            else
              do
                if (hstrlog[5]).matched then
                  local l_0_20 = (hstrlog[5]).VA
                  local l_0_21 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_20 - 9), 1), 1)
                  local l_0_22 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_20 - 3), 1), 1)
                  local l_0_23 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_20 - 1), 1), 1)
                  local l_0_24 = search_const(l_0_20 - 768, 768, l_0_21)
                  if l_0_24 ~= nil then
                    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                    ;
                    (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, (mp.bitand)(l_0_23 - (mp.bitand)((mp.bitxor)(l_0_22, l_0_24), 255), 255)))
                  end
                else
                  do
                    if (hstrlog[6]).matched then
                      local l_0_25 = (hstrlog[6]).VA
                      local l_0_26 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_25 - 5), 1), 1)
                      local l_0_27 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_25 - 3), 1), 1)
                      local l_0_28 = (string.byte)((mp.readfile)((pe.foffset_va)(l_0_25 - 1), 1), 1)
                      local l_0_29 = search_const(l_0_25 - 1024, 1024, l_0_26)
                      if l_0_29 ~= nil then
                        (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                        ;
                        (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, (mp.bitand)(l_0_28 - (mp.bitand)((mp.bitxor)(l_0_27, l_0_29), 255), 255)))
                      end
                    else
                      do
                        if (hstrlog[7]).matched then
                          local l_0_30 = (hstrlog[7]).VA
                          local l_0_31 = (mp.readu_u32)(map_read(l_0_30 - 16, 4), 1)
                          local l_0_32 = (string.byte)(map_read(l_0_30 - 3, 1), 1)
                          local l_0_33 = (string.byte)(map_read(l_0_30 - 1, 1), 1)
                          local l_0_34 = search_const_32_esp(l_0_30 - 1024, 1024, l_0_31)
                          if l_0_34 ~= nil then
                            (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                            ;
                            (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, (mp.bitand)(l_0_33 - (mp.bitand)((mp.bitxor)(l_0_32, l_0_34), 255), 255)))
                          end
                        else
                          do
                            if (hstrlog[8]).matched then
                              local l_0_35 = (hstrlog[8]).VA
                              local l_0_36 = (mp.readu_u32)(map_read(l_0_35 - 13, 4), 1)
                              local l_0_37 = (string.byte)(map_read(l_0_35 - 3, 1), 1)
                              local l_0_38 = (string.byte)(map_read(l_0_35 - 1, 1), 1)
                              local l_0_39 = search_const_32_esp(l_0_35 - 1024, 1024, l_0_36)
                              if l_0_39 ~= nil then
                                (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!hdsz.1C")
                                ;
                                (mp.set_mpattribute)((string.format)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_%02X%02X", 0, (mp.bitand)(l_0_38 - (mp.bitand)((mp.bitxor)(l_0_37, l_0_39), 255), 255)))
                              end
                            end
                            do
                              return mp.CLEAN
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

