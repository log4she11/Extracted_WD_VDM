-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22221.luac 

-- params : ...
-- function num : 0
map_read = function(l_1_0, l_1_1)
  -- function num : 0_0
  if (pe.mmap_va_nofastfail)(l_1_0, l_1_1) == "" then
    return (mp.readfile)((pe.foffset_va)(l_1_0), l_1_1)
  end
end

;
(mp.readprotection)(false)
if (hstrlog[1]).matched then
  local l_0_0 = (pe.mmap_va_nofastfail)((hstrlog[1]).VA + 4, 4)
  local l_0_1 = (pe.mmap_va_nofastfail)((hstrlog[1]).VA + 11, 4)
  ;
  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_0, 4), (string.byte)(l_0_0, 3), (string.byte)(l_0_0, 2), (string.byte)(l_0_0, 1), (string.byte)(l_0_1, 4), (string.byte)(l_0_1, 3), (string.byte)(l_0_1, 2), (string.byte)(l_0_1, 1)))
else
  do
    if (hstrlog[2]).matched then
      if (pe.mmap_va_nofastfail)((hstrlog[2]).VA + 4, 4) == "" or (pe.mmap_va_nofastfail)((hstrlog[2]).VA + 9, 4) == "" then
        local l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_8, l_0_10, l_0_12, l_0_14 = (mp.readfile)((pe.foffset_va)((hstrlog[2]).VA + 4), 4)
        l_0_4 = mp
        l_0_4 = l_0_4.readfile
        l_0_5 = pe
        l_0_5 = l_0_5.foffset_va
        l_0_6 = hstrlog
        l_0_6 = l_0_6[2]
        l_0_6 = l_0_6.VA
        l_0_6 = l_0_6 + 9
        l_0_5 = l_0_5(l_0_6)
        l_0_6 = 4
        l_0_4 = l_0_4(l_0_5, l_0_6)
        l_0_3 = l_0_4
        local l_0_7, l_0_9, l_0_11, l_0_13, l_0_15 = nil
      end
      do
        -- DECOMPILER ERROR at PC131: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC136: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC141: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC146: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC151: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC156: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC161: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC166: Confused about usage of register: R1 in 'UnsetPending'

        ;
        (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_2, 4), (string.byte)(l_0_2, 3), (string.byte)(l_0_2, 2), (string.byte)(l_0_2, 1), (string.byte)(l_0_3, 4), (string.byte)(l_0_3, 3), (string.byte)(l_0_3, 2), (string.byte)(l_0_3, 1)))
        if (hstrlog[3]).matched then
          local l_0_16 = (pe.mmap_va_nofastfail)((hstrlog[3]).VA + 4, 4)
          local l_0_17 = (pe.mmap_va_nofastfail)((hstrlog[3]).VA + 9, 4)
          ;
          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_16, 4), (string.byte)(l_0_16, 3), (string.byte)(l_0_16, 2), (string.byte)(l_0_16, 1), (string.byte)(l_0_17, 4), (string.byte)(l_0_17, 3), (string.byte)(l_0_17, 2), (string.byte)(l_0_17, 1)))
        else
          do
            if (hstrlog[4]).matched then
              local l_0_18 = (pe.mmap_va_nofastfail)((hstrlog[4]).VA + 4, 4)
              local l_0_19 = (pe.mmap_va_nofastfail)((hstrlog[4]).VA + 9, 4)
              ;
              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_18, 4), (string.byte)(l_0_18, 3), (string.byte)(l_0_18, 2), (string.byte)(l_0_18, 1), (string.byte)(l_0_19, 4), (string.byte)(l_0_19, 3), (string.byte)(l_0_19, 2), (string.byte)(l_0_19, 1)))
            else
              do
                if (hstrlog[5]).matched then
                  local l_0_20 = (pe.mmap_va_nofastfail)((hstrlog[5]).VA + 4, 4)
                  local l_0_21 = l_0_20
                  ;
                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_20, 4), (string.byte)(l_0_20, 3), (string.byte)(l_0_20, 2), (string.byte)(l_0_20, 1), (string.byte)(l_0_21, 4), (string.byte)(l_0_21, 3), (string.byte)(l_0_21, 2), (string.byte)(l_0_21, 1)))
                else
                  do
                    if (hstrlog[6]).matched then
                      local l_0_22 = (pe.mmap_va_nofastfail)((hstrlog[6]).VA - 12, 4)
                      local l_0_23 = (pe.mmap_va_nofastfail)((hstrlog[6]).VA - 7, 4)
                      ;
                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_22, 4), (string.byte)(l_0_22, 3), (string.byte)(l_0_22, 2), (string.byte)(l_0_22, 1), (string.byte)(l_0_23, 4), (string.byte)(l_0_23, 3), (string.byte)(l_0_23, 2), (string.byte)(l_0_23, 1)))
                    else
                      do
                        if (hstrlog[7]).matched then
                          local l_0_24 = (pe.mmap_va_nofastfail)((hstrlog[7]).VA + 4, 4)
                          local l_0_25 = (pe.mmap_va_nofastfail)((hstrlog[7]).VA + 9, 4)
                          ;
                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_24, 4), (string.byte)(l_0_24, 3), (string.byte)(l_0_24, 2), (string.byte)(l_0_24, 1), (string.byte)(l_0_25, 4), (string.byte)(l_0_25, 3), (string.byte)(l_0_25, 2), (string.byte)(l_0_25, 1)))
                        else
                          do
                            if (hstrlog[8]).matched then
                              local l_0_26 = (pe.mmap_va_nofastfail)((hstrlog[8]).VA - 16, 4)
                              local l_0_27 = (pe.mmap_va_nofastfail)((hstrlog[8]).VA - 4, 4)
                              ;
                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_26, 4), (string.byte)(l_0_26, 3), (string.byte)(l_0_26, 2), (string.byte)(l_0_26, 1), (string.byte)(l_0_27, 4), (string.byte)(l_0_27, 3), (string.byte)(l_0_27, 2), (string.byte)(l_0_27, 1)))
                            else
                              do
                                if (hstrlog[9]).matched then
                                  local l_0_28 = (pe.mmap_va_nofastfail)((hstrlog[9]).VA - 11, 4)
                                  local l_0_29 = (pe.mmap_va_nofastfail)((hstrlog[9]).VA - 4, 4)
                                  ;
                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_28, 4), (string.byte)(l_0_28, 3), (string.byte)(l_0_28, 2), (string.byte)(l_0_28, 1), (string.byte)(l_0_29, 4), (string.byte)(l_0_29, 3), (string.byte)(l_0_29, 2), (string.byte)(l_0_29, 1)))
                                else
                                  do
                                    if (hstrlog[10]).matched then
                                      local l_0_30 = (pe.mmap_va_nofastfail)((hstrlog[10]).VA + 4, 4)
                                      local l_0_31 = (pe.mmap_va_nofastfail)((hstrlog[10]).VA + 9, 4)
                                      ;
                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_30, 4), (string.byte)(l_0_30, 3), (string.byte)(l_0_30, 2), (string.byte)(l_0_30, 1), (string.byte)(l_0_31, 4), (string.byte)(l_0_31, 3), (string.byte)(l_0_31, 2), (string.byte)(l_0_31, 1)))
                                    else
                                      do
                                        if (hstrlog[11]).matched then
                                          local l_0_32 = (pe.mmap_va_nofastfail)((hstrlog[11]).VA - 1, 4)
                                          local l_0_33 = (pe.mmap_va_nofastfail)((hstrlog[11]).VA + 6, 4)
                                          ;
                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_32, 4), (string.byte)(l_0_32, 3), (string.byte)(l_0_32, 2), (string.byte)(l_0_32, 1), (string.byte)(l_0_33, 4), (string.byte)(l_0_33, 3), (string.byte)(l_0_33, 2), (string.byte)(l_0_33, 1)))
                                        else
                                          do
                                            if (hstrlog[12]).matched then
                                              local l_0_34 = (pe.mmap_va_nofastfail)((hstrlog[12]).VA + 5, 4)
                                              local l_0_35 = (pe.mmap_va_nofastfail)((hstrlog[12]).VA + 10, 4)
                                              ;
                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_34, 4), (string.byte)(l_0_34, 3), (string.byte)(l_0_34, 2), (string.byte)(l_0_34, 1), (string.byte)(l_0_35, 4), (string.byte)(l_0_35, 3), (string.byte)(l_0_35, 2), (string.byte)(l_0_35, 1)))
                                            else
                                              do
                                                if (hstrlog[13]).matched then
                                                  local l_0_36 = (pe.mmap_va_nofastfail)((hstrlog[13]).VA - 1, 4)
                                                  local l_0_37 = (pe.mmap_va_nofastfail)((hstrlog[13]).VA + 14, 4)
                                                  ;
                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_36, 4), (string.byte)(l_0_36, 3), (string.byte)(l_0_36, 2), (string.byte)(l_0_36, 1), (string.byte)(l_0_37, 4), (string.byte)(l_0_37, 3), (string.byte)(l_0_37, 2), (string.byte)(l_0_37, 1)))
                                                else
                                                  do
                                                    if (hstrlog[14]).matched then
                                                      local l_0_38 = (pe.mmap_va_nofastfail)((hstrlog[14]).VA - 1, 4)
                                                      local l_0_39 = (pe.mmap_va_nofastfail)((hstrlog[14]).VA + 6, 4)
                                                      ;
                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_38, 4), (string.byte)(l_0_38, 3), (string.byte)(l_0_38, 2), (string.byte)(l_0_38, 1), (string.byte)(l_0_39, 4), (string.byte)(l_0_39, 3), (string.byte)(l_0_39, 2), (string.byte)(l_0_39, 1)))
                                                    else
                                                      do
                                                        if (hstrlog[15]).matched then
                                                          local l_0_40 = (pe.mmap_va_nofastfail)((hstrlog[15]).VA - 1, 4)
                                                          local l_0_41 = (pe.mmap_va_nofastfail)((hstrlog[15]).VA + 6, 4)
                                                          ;
                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_41, 4), (string.byte)(l_0_41, 3), (string.byte)(l_0_41, 2), (string.byte)(l_0_41, 1), (string.byte)(l_0_40, 4), (string.byte)(l_0_40, 3), (string.byte)(l_0_40, 2), (string.byte)(l_0_40, 1)))
                                                        else
                                                          do
                                                            if (hstrlog[16]).matched then
                                                              local l_0_42 = (pe.mmap_va_nofastfail)((hstrlog[16]).VA + 4, 4)
                                                              local l_0_43 = (pe.mmap_va_nofastfail)((hstrlog[16]).VA + 9, 4)
                                                              ;
                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_42, 4), (string.byte)(l_0_42, 3), (string.byte)(l_0_42, 2), (string.byte)(l_0_42, 1), (string.byte)(l_0_43, 4), (string.byte)(l_0_43, 3), (string.byte)(l_0_43, 2), (string.byte)(l_0_43, 1)))
                                                            else
                                                              do
                                                                if (hstrlog[17]).matched then
                                                                  local l_0_44 = (pe.mmap_va_nofastfail)((hstrlog[17]).VA + 4, 4)
                                                                  local l_0_45 = (pe.mmap_va_nofastfail)((hstrlog[17]).VA + 9, 4)
                                                                  ;
                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_44, 4), (string.byte)(l_0_44, 3), (string.byte)(l_0_44, 2), (string.byte)(l_0_44, 1), (string.byte)(l_0_45, 4), (string.byte)(l_0_45, 3), (string.byte)(l_0_45, 2), (string.byte)(l_0_45, 1)))
                                                                else
                                                                  do
                                                                    if (hstrlog[18]).matched then
                                                                      local l_0_46 = (pe.mmap_va_nofastfail)((hstrlog[18]).VA - 1, 4)
                                                                      local l_0_47 = (pe.mmap_va_nofastfail)((hstrlog[18]).VA + 4, 4)
                                                                      ;
                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_46, 4), (string.byte)(l_0_46, 3), (string.byte)(l_0_46, 2), (string.byte)(l_0_46, 1), (string.byte)(l_0_47, 4), (string.byte)(l_0_47, 3), (string.byte)(l_0_47, 2), (string.byte)(l_0_47, 1)))
                                                                    else
                                                                      do
                                                                        if (hstrlog[19]).matched then
                                                                          local l_0_48 = (pe.mmap_va_nofastfail)((hstrlog[19]).VA - 1, 4)
                                                                          local l_0_49 = (pe.mmap_va_nofastfail)((hstrlog[19]).VA + 4, 4)
                                                                          ;
                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_48, 4), (string.byte)(l_0_48, 3), (string.byte)(l_0_48, 2), (string.byte)(l_0_48, 1), (string.byte)(l_0_49, 4), (string.byte)(l_0_49, 3), (string.byte)(l_0_49, 2), (string.byte)(l_0_49, 1)))
                                                                        else
                                                                          do
                                                                            if (hstrlog[20]).matched then
                                                                              local l_0_50 = (pe.mmap_va_nofastfail)((hstrlog[20]).VA - 1, 4)
                                                                              local l_0_51 = (pe.mmap_va_nofastfail)((hstrlog[20]).VA + 4, 4)
                                                                              ;
                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_50, 4), (string.byte)(l_0_50, 3), (string.byte)(l_0_50, 2), (string.byte)(l_0_50, 1), (string.byte)(l_0_51, 4), (string.byte)(l_0_51, 3), (string.byte)(l_0_51, 2), (string.byte)(l_0_51, 1)))
                                                                            else
                                                                              do
                                                                                if (hstrlog[21]).matched then
                                                                                  local l_0_52 = (pe.mmap_va_nofastfail)((hstrlog[21]).VA - 1, 4)
                                                                                  local l_0_53 = (pe.mmap_va_nofastfail)((hstrlog[21]).VA + 4, 4)
                                                                                  ;
                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_52, 4), (string.byte)(l_0_52, 3), (string.byte)(l_0_52, 2), (string.byte)(l_0_52, 1), (string.byte)(l_0_53, 4), (string.byte)(l_0_53, 3), (string.byte)(l_0_53, 2), (string.byte)(l_0_53, 1)))
                                                                                else
                                                                                  do
                                                                                    if (hstrlog[22]).matched then
                                                                                      local l_0_54 = (pe.mmap_va_nofastfail)((hstrlog[22]).VA + 4, 4)
                                                                                      local l_0_55 = (pe.mmap_va_nofastfail)((hstrlog[22]).VA + 9, 4)
                                                                                      ;
                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_54, 4), (string.byte)(l_0_54, 3), (string.byte)(l_0_54, 2), (string.byte)(l_0_54, 1), (string.byte)(l_0_55, 4), (string.byte)(l_0_55, 3), (string.byte)(l_0_55, 2), (string.byte)(l_0_55, 1)))
                                                                                    else
                                                                                      do
                                                                                        if (hstrlog[23]).matched then
                                                                                          local l_0_56 = (pe.mmap_va_nofastfail)((hstrlog[23]).VA + 4, 4)
                                                                                          local l_0_57 = (pe.mmap_va_nofastfail)((hstrlog[23]).VA + 9, 4)
                                                                                          ;
                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_56, 4), (string.byte)(l_0_56, 3), (string.byte)(l_0_56, 2), (string.byte)(l_0_56, 1), (string.byte)(l_0_57, 4), (string.byte)(l_0_57, 3), (string.byte)(l_0_57, 2), (string.byte)(l_0_57, 1)))
                                                                                        else
                                                                                          do
                                                                                            if (hstrlog[24]).matched then
                                                                                              if (pe.mmap_va_nofastfail)((hstrlog[24]).VA + 4, 4) == "" or (pe.mmap_va_nofastfail)((hstrlog[24]).VA + 19, 4) == "" then
                                                                                                local l_0_58, l_0_59, l_0_60, l_0_61, l_0_62, l_0_64, l_0_66, l_0_68, l_0_70 = (mp.readfile)((pe.foffset_va)((hstrlog[24]).VA + 4), 4)
                                                                                                l_0_60 = mp
                                                                                                l_0_60 = l_0_60.readfile
                                                                                                l_0_61 = pe
                                                                                                l_0_61 = l_0_61.foffset_va
                                                                                                l_0_62 = hstrlog
                                                                                                l_0_62 = l_0_62[24]
                                                                                                l_0_62 = l_0_62.VA
                                                                                                l_0_62 = l_0_62 + 19
                                                                                                l_0_61 = l_0_61(l_0_62)
                                                                                                l_0_62 = 4
                                                                                                l_0_60 = l_0_60(l_0_61, l_0_62)
                                                                                                l_0_59 = l_0_60
                                                                                                local l_0_63, l_0_65, l_0_67, l_0_69, l_0_71 = nil
                                                                                              end
                                                                                              do
                                                                                                -- DECOMPILER ERROR at PC1670: Confused about usage of register: R0 in 'UnsetPending'

                                                                                                -- DECOMPILER ERROR at PC1675: Confused about usage of register: R0 in 'UnsetPending'

                                                                                                -- DECOMPILER ERROR at PC1680: Confused about usage of register: R0 in 'UnsetPending'

                                                                                                -- DECOMPILER ERROR at PC1685: Confused about usage of register: R0 in 'UnsetPending'

                                                                                                -- DECOMPILER ERROR at PC1690: Confused about usage of register: R1 in 'UnsetPending'

                                                                                                -- DECOMPILER ERROR at PC1695: Confused about usage of register: R1 in 'UnsetPending'

                                                                                                -- DECOMPILER ERROR at PC1700: Confused about usage of register: R1 in 'UnsetPending'

                                                                                                -- DECOMPILER ERROR at PC1705: Confused about usage of register: R1 in 'UnsetPending'

                                                                                                ;
                                                                                                (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_58, 4), (string.byte)(l_0_58, 3), (string.byte)(l_0_58, 2), (string.byte)(l_0_58, 1), (string.byte)(l_0_59, 4), (string.byte)(l_0_59, 3), (string.byte)(l_0_59, 2), (string.byte)(l_0_59, 1)))
                                                                                                if (hstrlog[25]).matched then
                                                                                                  local l_0_72 = (pe.mmap_va_nofastfail)((hstrlog[25]).VA - 3, 4)
                                                                                                  local l_0_73 = (pe.mmap_va_nofastfail)((hstrlog[25]).VA + 5, 4)
                                                                                                  ;
                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_72, 4), (string.byte)(l_0_72, 3), (string.byte)(l_0_72, 2), (string.byte)(l_0_72, 1), (string.byte)(l_0_73, 4), (string.byte)(l_0_73, 3), (string.byte)(l_0_73, 2), (string.byte)(l_0_73, 1)))
                                                                                                else
                                                                                                  do
                                                                                                    if (hstrlog[26]).matched then
                                                                                                      local l_0_74 = (pe.mmap_va_nofastfail)((hstrlog[26]).VA + 14, 4)
                                                                                                      local l_0_75 = (pe.mmap_va_nofastfail)((hstrlog[26]).VA + 19, 4)
                                                                                                      ;
                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_74, 4), (string.byte)(l_0_74, 3), (string.byte)(l_0_74, 2), (string.byte)(l_0_74, 1), (string.byte)(l_0_75, 4), (string.byte)(l_0_75, 3), (string.byte)(l_0_75, 2), (string.byte)(l_0_75, 1)))
                                                                                                    else
                                                                                                      do
                                                                                                        if (hstrlog[27]).matched then
                                                                                                          local l_0_76 = (mp.readfile)((pe.foffset_va)((hstrlog[27]).VA + 14), 4)
                                                                                                          local l_0_77 = (mp.readfile)((pe.foffset_va)((hstrlog[27]).VA + 29), 4)
                                                                                                          ;
                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_76, 4), (string.byte)(l_0_76, 3), (string.byte)(l_0_76, 2), (string.byte)(l_0_76, 1), (string.byte)(l_0_77, 4), (string.byte)(l_0_77, 3), (string.byte)(l_0_77, 2), (string.byte)(l_0_77, 1)))
                                                                                                        else
                                                                                                          do
                                                                                                            if (hstrlog[29]).matched then
                                                                                                              local l_0_78 = (mp.readfile)((pe.foffset_va)((hstrlog[29]).VA + 14), 4)
                                                                                                              local l_0_79 = (mp.readfile)((pe.foffset_va)((hstrlog[29]).VA + 29), 4)
                                                                                                              ;
                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_79, 4), (string.byte)(l_0_79, 3), (string.byte)(l_0_79, 2), (string.byte)(l_0_79, 1), (string.byte)(l_0_78, 4), (string.byte)(l_0_78, 3), (string.byte)(l_0_78, 2), (string.byte)(l_0_78, 1)))
                                                                                                            else
                                                                                                              do
                                                                                                                if (hstrlog[30]).matched then
                                                                                                                  local l_0_80 = (pe.mmap_va_nofastfail)((hstrlog[30]).VA + 4, 4)
                                                                                                                  local l_0_81 = (pe.mmap_va_nofastfail)((hstrlog[30]).VA + 11, 4)
                                                                                                                  ;
                                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_81, 4), (string.byte)(l_0_81, 3), (string.byte)(l_0_81, 2), (string.byte)(l_0_81, 1), (string.byte)(l_0_80, 4), (string.byte)(l_0_80, 3), (string.byte)(l_0_80, 2), (string.byte)(l_0_80, 1)))
                                                                                                                else
                                                                                                                  do
                                                                                                                    if (hstrlog[31]).matched then
                                                                                                                      local l_0_82 = (pe.mmap_va_nofastfail)((hstrlog[31]).VA + 6, 4)
                                                                                                                      local l_0_83 = (pe.mmap_va_nofastfail)((hstrlog[31]).VA + 12, 4)
                                                                                                                      ;
                                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_82, 4), (string.byte)(l_0_82, 3), (string.byte)(l_0_82, 2), (string.byte)(l_0_82, 1), (string.byte)(l_0_83, 4), (string.byte)(l_0_83, 3), (string.byte)(l_0_83, 2), (string.byte)(l_0_83, 1)))
                                                                                                                    else
                                                                                                                      do
                                                                                                                        if (hstrlog[32]).matched then
                                                                                                                          local l_0_84 = (pe.mmap_va_nofastfail)((hstrlog[32]).VA + 6, 4)
                                                                                                                          local l_0_85 = (pe.mmap_va_nofastfail)((hstrlog[32]).VA + 12, 4)
                                                                                                                          ;
                                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_84, 4), (string.byte)(l_0_84, 3), (string.byte)(l_0_84, 2), (string.byte)(l_0_84, 1), (string.byte)(l_0_85, 4), (string.byte)(l_0_85, 3), (string.byte)(l_0_85, 2), (string.byte)(l_0_85, 1)))
                                                                                                                        else
                                                                                                                          do
                                                                                                                            if (hstrlog[33]).matched then
                                                                                                                              local l_0_86 = (pe.mmap_va_nofastfail)((hstrlog[33]).VA + 4, 4)
                                                                                                                              local l_0_87 = (pe.mmap_va_nofastfail)((hstrlog[33]).VA + 11, 4)
                                                                                                                              ;
                                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_86, 4), (string.byte)(l_0_86, 3), (string.byte)(l_0_86, 2), (string.byte)(l_0_86, 1), (string.byte)(l_0_87, 4), (string.byte)(l_0_87, 3), (string.byte)(l_0_87, 2), (string.byte)(l_0_87, 1)))
                                                                                                                            else
                                                                                                                              do
                                                                                                                                if (hstrlog[34]).matched then
                                                                                                                                  local l_0_88 = (pe.mmap_va_nofastfail)((hstrlog[34]).VA - 19, 4)
                                                                                                                                  local l_0_89 = (pe.mmap_va_nofastfail)((hstrlog[34]).VA - 12, 4)
                                                                                                                                  ;
                                                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_88, 4), (string.byte)(l_0_88, 3), (string.byte)(l_0_88, 2), (string.byte)(l_0_88, 1), (string.byte)(l_0_89, 4), (string.byte)(l_0_89, 3), (string.byte)(l_0_89, 2), (string.byte)(l_0_89, 1)))
                                                                                                                                else
                                                                                                                                  do
                                                                                                                                    if (hstrlog[35]).matched then
                                                                                                                                      local l_0_90 = (pe.mmap_va_nofastfail)((hstrlog[35]).VA + 10, 4)
                                                                                                                                      local l_0_91 = (pe.mmap_va_nofastfail)((hstrlog[35]).VA + 15, 4)
                                                                                                                                      ;
                                                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_90, 4), (string.byte)(l_0_90, 3), (string.byte)(l_0_90, 2), (string.byte)(l_0_90, 1), (string.byte)(l_0_91, 4), (string.byte)(l_0_91, 3), (string.byte)(l_0_91, 2), (string.byte)(l_0_91, 1)))
                                                                                                                                    else
                                                                                                                                      do
                                                                                                                                        if (hstrlog[36]).matched then
                                                                                                                                          local l_0_92 = (pe.mmap_va_nofastfail)((hstrlog[36]).VA + 10, 4)
                                                                                                                                          local l_0_93 = (pe.mmap_va_nofastfail)((hstrlog[36]).VA + 15, 4)
                                                                                                                                          ;
                                                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_92, 4), (string.byte)(l_0_92, 3), (string.byte)(l_0_92, 2), (string.byte)(l_0_92, 1), (string.byte)(l_0_93, 4), (string.byte)(l_0_93, 3), (string.byte)(l_0_93, 2), (string.byte)(l_0_93, 1)))
                                                                                                                                        else
                                                                                                                                          do
                                                                                                                                            if (hstrlog[37]).matched then
                                                                                                                                              local l_0_94 = (pe.mmap_va_nofastfail)((hstrlog[37]).VA + 5, 4)
                                                                                                                                              local l_0_95 = (pe.mmap_va_nofastfail)((hstrlog[37]).VA + 11, 4)
                                                                                                                                              ;
                                                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_94, 4), (string.byte)(l_0_94, 3), (string.byte)(l_0_94, 2), (string.byte)(l_0_94, 1), (string.byte)(l_0_95, 4), (string.byte)(l_0_95, 3), (string.byte)(l_0_95, 2), (string.byte)(l_0_95, 1)))
                                                                                                                                            else
                                                                                                                                              do
                                                                                                                                                if (hstrlog[38]).matched then
                                                                                                                                                  local l_0_96 = (pe.mmap_va_nofastfail)((hstrlog[38]).VA + 5, 4)
                                                                                                                                                  local l_0_97 = (pe.mmap_va_nofastfail)((hstrlog[38]).VA + 12, 4)
                                                                                                                                                  ;
                                                                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_96, 4), (string.byte)(l_0_96, 3), (string.byte)(l_0_96, 2), (string.byte)(l_0_96, 1), (string.byte)(l_0_97, 4), (string.byte)(l_0_97, 3), (string.byte)(l_0_97, 2), (string.byte)(l_0_97, 1)))
                                                                                                                                                else
                                                                                                                                                  do
                                                                                                                                                    if (hstrlog[39]).matched then
                                                                                                                                                      local l_0_98 = (pe.mmap_va_nofastfail)((hstrlog[39]).VA + 5, 4)
                                                                                                                                                      local l_0_99 = (pe.mmap_va_nofastfail)((hstrlog[39]).VA + 21, 4)
                                                                                                                                                      ;
                                                                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_98, 4), (string.byte)(l_0_98, 3), (string.byte)(l_0_98, 2), (string.byte)(l_0_98, 1), (string.byte)(l_0_99, 4), (string.byte)(l_0_99, 3), (string.byte)(l_0_99, 2), (string.byte)(l_0_99, 1)))
                                                                                                                                                    else
                                                                                                                                                      do
                                                                                                                                                        if (hstrlog[40]).matched then
                                                                                                                                                          local l_0_100 = (pe.mmap_va_nofastfail)((hstrlog[40]).VA + 15, 4)
                                                                                                                                                          local l_0_101 = (pe.mmap_va_nofastfail)((hstrlog[40]).VA + 31, 4)
                                                                                                                                                          ;
                                                                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_100, 4), (string.byte)(l_0_100, 3), (string.byte)(l_0_100, 2), (string.byte)(l_0_100, 1), (string.byte)(l_0_101, 4), (string.byte)(l_0_101, 3), (string.byte)(l_0_101, 2), (string.byte)(l_0_101, 1)))
                                                                                                                                                        else
                                                                                                                                                          do
                                                                                                                                                            if (hstrlog[41]).matched then
                                                                                                                                                              local l_0_102 = (pe.mmap_va_nofastfail)((hstrlog[41]).VA + 4, 4)
                                                                                                                                                              local l_0_103 = (pe.mmap_va_nofastfail)((hstrlog[41]).VA + 15, 4)
                                                                                                                                                              ;
                                                                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_102, 4), (string.byte)(l_0_102, 3), (string.byte)(l_0_102, 2), (string.byte)(l_0_102, 1), (string.byte)(l_0_103, 4), (string.byte)(l_0_103, 3), (string.byte)(l_0_103, 2), (string.byte)(l_0_103, 1)))
                                                                                                                                                            else
                                                                                                                                                              do
                                                                                                                                                                if (hstrlog[42]).matched then
                                                                                                                                                                  local l_0_104 = (pe.mmap_va_nofastfail)((hstrlog[42]).VA + 12, 4)
                                                                                                                                                                  local l_0_105 = (pe.mmap_va_nofastfail)((hstrlog[42]).VA + 7, 4)
                                                                                                                                                                  ;
                                                                                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_104, 4), (string.byte)(l_0_104, 3), (string.byte)(l_0_104, 2), (string.byte)(l_0_104, 1), (string.byte)(l_0_105, 4), (string.byte)(l_0_105, 3), (string.byte)(l_0_105, 2), (string.byte)(l_0_105, 1)))
                                                                                                                                                                else
                                                                                                                                                                  do
                                                                                                                                                                    if (hstrlog[43]).matched then
                                                                                                                                                                      local l_0_106 = (mp.readfile)((pe.foffset_va)((hstrlog[43]).VA + 5), 4)
                                                                                                                                                                      local l_0_107 = (mp.readfile)((pe.foffset_va)((hstrlog[43]).VA + 12), 4)
                                                                                                                                                                      ;
                                                                                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_106, 4), (string.byte)(l_0_106, 3), (string.byte)(l_0_106, 2), (string.byte)(l_0_106, 1), (string.byte)(l_0_107, 4), (string.byte)(l_0_107, 3), (string.byte)(l_0_107, 2), (string.byte)(l_0_107, 1)))
                                                                                                                                                                    else
                                                                                                                                                                      do
                                                                                                                                                                        if (hstrlog[44]).matched then
                                                                                                                                                                          local l_0_108 = (mp.readfile)((pe.foffset_va)((hstrlog[44]).VA + 4), 4)
                                                                                                                                                                          local l_0_109 = (mp.readfile)((pe.foffset_va)((hstrlog[44]).VA + 19), 4)
                                                                                                                                                                          ;
                                                                                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_108, 4), (string.byte)(l_0_108, 3), (string.byte)(l_0_108, 2), (string.byte)(l_0_108, 1), (string.byte)(l_0_109, 4), (string.byte)(l_0_109, 3), (string.byte)(l_0_109, 2), (string.byte)(l_0_109, 1)))
                                                                                                                                                                        else
                                                                                                                                                                          do
                                                                                                                                                                            if (hstrlog[46]).matched then
                                                                                                                                                                              local l_0_110 = (mp.readfile)((pe.foffset_va)((hstrlog[46]).VA - 1), 4)
                                                                                                                                                                              local l_0_111 = (mp.readfile)((pe.foffset_va)((hstrlog[46]).VA + 6), 4)
                                                                                                                                                                              ;
                                                                                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_110, 4), (string.byte)(l_0_110, 3), (string.byte)(l_0_110, 2), (string.byte)(l_0_110, 1), (string.byte)(l_0_111, 4), (string.byte)(l_0_111, 3), (string.byte)(l_0_111, 2), (string.byte)(l_0_111, 1)))
                                                                                                                                                                            else
                                                                                                                                                                              do
                                                                                                                                                                                if (hstrlog[47]).matched then
                                                                                                                                                                                  local l_0_112 = (mp.readfile)((pe.foffset_va)((hstrlog[47]).VA + 5), 4)
                                                                                                                                                                                  local l_0_113 = (mp.readfile)((pe.foffset_va)((hstrlog[47]).VA + 12), 4)
                                                                                                                                                                                  ;
                                                                                                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_112, 4), (string.byte)(l_0_112, 3), (string.byte)(l_0_112, 2), (string.byte)(l_0_112, 1), (string.byte)(l_0_113, 4), (string.byte)(l_0_113, 3), (string.byte)(l_0_113, 2), (string.byte)(l_0_113, 1)))
                                                                                                                                                                                else
                                                                                                                                                                                  do
                                                                                                                                                                                    if (hstrlog[48]).matched then
                                                                                                                                                                                      local l_0_114 = (mp.readfile)((pe.foffset_va)((hstrlog[48]).VA + 4), 4)
                                                                                                                                                                                      local l_0_115 = (mp.readfile)((pe.foffset_va)((hstrlog[48]).VA + 11), 4)
                                                                                                                                                                                      ;
                                                                                                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_114, 4), (string.byte)(l_0_114, 3), (string.byte)(l_0_114, 2), (string.byte)(l_0_114, 1), (string.byte)(l_0_115, 4), (string.byte)(l_0_115, 3), (string.byte)(l_0_115, 2), (string.byte)(l_0_115, 1)))
                                                                                                                                                                                    else
                                                                                                                                                                                      do
                                                                                                                                                                                        if (hstrlog[49]).matched then
                                                                                                                                                                                          local l_0_116 = (mp.readfile)((pe.foffset_va)((hstrlog[49]).VA - 11), 4)
                                                                                                                                                                                          local l_0_117 = (mp.readfile)((pe.foffset_va)((hstrlog[49]).VA - 4), 4)
                                                                                                                                                                                          ;
                                                                                                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_116, 4), (string.byte)(l_0_116, 3), (string.byte)(l_0_116, 2), (string.byte)(l_0_116, 1), (string.byte)(l_0_117, 4), (string.byte)(l_0_117, 3), (string.byte)(l_0_117, 2), (string.byte)(l_0_117, 1)))
                                                                                                                                                                                        else
                                                                                                                                                                                          do
                                                                                                                                                                                            if (hstrlog[50]).matched then
                                                                                                                                                                                              local l_0_118 = (mp.readfile)((pe.foffset_va)((hstrlog[50]).VA + 10), 4)
                                                                                                                                                                                              local l_0_119 = (mp.readfile)((pe.foffset_va)((hstrlog[50]).VA + 15), 4)
                                                                                                                                                                                              ;
                                                                                                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_118, 4), (string.byte)(l_0_118, 3), (string.byte)(l_0_118, 2), (string.byte)(l_0_118, 1), (string.byte)(l_0_119, 4), (string.byte)(l_0_119, 3), (string.byte)(l_0_119, 2), (string.byte)(l_0_119, 1)))
                                                                                                                                                                                            else
                                                                                                                                                                                              do
                                                                                                                                                                                                if (hstrlog[51]).matched then
                                                                                                                                                                                                  local l_0_120 = (mp.readfile)((pe.foffset_va)((hstrlog[51]).VA - 4), 4)
                                                                                                                                                                                                  ;
                                                                                                                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", 0, 0, 0, 0, (string.byte)(l_0_120, 4), (string.byte)(l_0_120, 3), (string.byte)(l_0_120, 2), (string.byte)(l_0_120, 1)))
                                                                                                                                                                                                else
                                                                                                                                                                                                  do
                                                                                                                                                                                                    if (hstrlog[52]).matched then
                                                                                                                                                                                                      local l_0_121 = (mp.readfile)((pe.foffset_va)((hstrlog[52]).VA + 6), 4)
                                                                                                                                                                                                      local l_0_122 = (mp.readfile)((pe.foffset_va)((hstrlog[52]).VA + 13), 4)
                                                                                                                                                                                                      ;
                                                                                                                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_121, 4), (string.byte)(l_0_121, 3), (string.byte)(l_0_121, 2), (string.byte)(l_0_121, 1), (string.byte)(l_0_122, 4), (string.byte)(l_0_122, 3), (string.byte)(l_0_122, 2), (string.byte)(l_0_122, 1)))
                                                                                                                                                                                                    else
                                                                                                                                                                                                      do
                                                                                                                                                                                                        if (hstrlog[53]).matched then
                                                                                                                                                                                                          local l_0_123 = (mp.readfile)((pe.foffset_va)((hstrlog[53]).VA + 4), 4)
                                                                                                                                                                                                          local l_0_124 = (mp.readfile)((pe.foffset_va)((hstrlog[53]).VA + 11), 4)
                                                                                                                                                                                                          ;
                                                                                                                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_123, 4), (string.byte)(l_0_123, 3), (string.byte)(l_0_123, 2), (string.byte)(l_0_123, 1), (string.byte)(l_0_124, 4), (string.byte)(l_0_124, 3), (string.byte)(l_0_124, 2), (string.byte)(l_0_124, 1)))
                                                                                                                                                                                                        else
                                                                                                                                                                                                          do
                                                                                                                                                                                                            if (hstrlog[54]).matched then
                                                                                                                                                                                                              local l_0_125 = (mp.readfile)((pe.foffset_va)((hstrlog[54]).VA + 10), 4)
                                                                                                                                                                                                              local l_0_126 = (mp.readfile)((pe.foffset_va)((hstrlog[54]).VA + 16), 4)
                                                                                                                                                                                                              ;
                                                                                                                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_125, 4), (string.byte)(l_0_125, 3), (string.byte)(l_0_125, 2), (string.byte)(l_0_125, 1), (string.byte)(l_0_126, 4), (string.byte)(l_0_126, 3), (string.byte)(l_0_126, 2), (string.byte)(l_0_126, 1)))
                                                                                                                                                                                                            else
                                                                                                                                                                                                              do
                                                                                                                                                                                                                if (hstrlog[59]).matched then
                                                                                                                                                                                                                  local l_0_127 = map_read((hstrlog[59]).VA - 11, 4)
                                                                                                                                                                                                                  local l_0_128 = map_read((hstrlog[59]).VA - 4, 4)
                                                                                                                                                                                                                  ;
                                                                                                                                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_127, 4), (string.byte)(l_0_127, 3), (string.byte)(l_0_127, 2), (string.byte)(l_0_127, 1), (string.byte)(l_0_128, 4), (string.byte)(l_0_128, 3), (string.byte)(l_0_128, 2), (string.byte)(l_0_128, 1)))
                                                                                                                                                                                                                else
                                                                                                                                                                                                                  do
                                                                                                                                                                                                                    if (hstrlog[55]).matched then
                                                                                                                                                                                                                      local l_0_129 = (mp.readfile)((pe.foffset_va)((hstrlog[55]).VA + 4), 4)
                                                                                                                                                                                                                      local l_0_130 = (mp.readfile)((pe.foffset_va)((hstrlog[55]).VA + 11), 4)
                                                                                                                                                                                                                      ;
                                                                                                                                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_129, 4), (string.byte)(l_0_129, 3), (string.byte)(l_0_129, 2), (string.byte)(l_0_129, 1), (string.byte)(l_0_130, 4), (string.byte)(l_0_130, 3), (string.byte)(l_0_130, 2), (string.byte)(l_0_130, 1)))
                                                                                                                                                                                                                    else
                                                                                                                                                                                                                      do
                                                                                                                                                                                                                        if (hstrlog[56]).matched then
                                                                                                                                                                                                                          local l_0_131 = (mp.readfile)((pe.foffset_va)((hstrlog[56]).VA + 4), 4)
                                                                                                                                                                                                                          local l_0_132 = (mp.readfile)((pe.foffset_va)((hstrlog[56]).VA + 11), 4)
                                                                                                                                                                                                                          ;
                                                                                                                                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_131, 4), (string.byte)(l_0_131, 3), (string.byte)(l_0_131, 2), (string.byte)(l_0_131, 1), (string.byte)(l_0_132, 4), (string.byte)(l_0_132, 3), (string.byte)(l_0_132, 2), (string.byte)(l_0_132, 1)))
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                          do
                                                                                                                                                                                                                            if (hstrlog[57]).matched then
                                                                                                                                                                                                                              local l_0_133 = (mp.readfile)((pe.foffset_va)((hstrlog[57]).VA + 4), 4)
                                                                                                                                                                                                                              local l_0_134 = (mp.readfile)((pe.foffset_va)((hstrlog[57]).VA + 11), 4)
                                                                                                                                                                                                                              ;
                                                                                                                                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_133, 4), (string.byte)(l_0_133, 3), (string.byte)(l_0_133, 2), (string.byte)(l_0_133, 1), (string.byte)(l_0_134, 4), (string.byte)(l_0_134, 3), (string.byte)(l_0_134, 2), (string.byte)(l_0_134, 1)))
                                                                                                                                                                                                                            else
                                                                                                                                                                                                                              do
                                                                                                                                                                                                                                if (hstrlog[58]).matched then
                                                                                                                                                                                                                                  local l_0_135 = (mp.readfile)((pe.foffset_va)((hstrlog[58]).VA - 4), 4)
                                                                                                                                                                                                                                  ;
                                                                                                                                                                                                                                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", 0, 0, 0, 0, (string.byte)(l_0_135, 4), (string.byte)(l_0_135, 3), (string.byte)(l_0_135, 2), (string.byte)(l_0_135, 1)))
                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                  do
                                                                                                                                                                                                                                    if (hstrlog[60]).matched then
                                                                                                                                                                                                                                      local l_0_136 = (mp.readfile)((pe.foffset_va)((hstrlog[60]).VA + 6), 4)
                                                                                                                                                                                                                                      ;
                                                                                                                                                                                                                                      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", 0, 0, 0, 0, (string.byte)(l_0_136, 4), (string.byte)(l_0_136, 3), (string.byte)(l_0_136, 2), (string.byte)(l_0_136, 1)))
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                      do
                                                                                                                                                                                                                                        if (hstrlog[45]).matched then
                                                                                                                                                                                                                                          local l_0_137 = (mp.readfile)((pe.foffset_va)((hstrlog[45]).VA + 4), 4)
                                                                                                                                                                                                                                          local l_0_138 = (mp.readfile)((pe.foffset_va)((hstrlog[45]).VA + 9), 4)
                                                                                                                                                                                                                                          ;
                                                                                                                                                                                                                                          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_137, 4), (string.byte)(l_0_137, 3), (string.byte)(l_0_137, 2), (string.byte)(l_0_137, 1), (string.byte)(l_0_138, 4), (string.byte)(l_0_138, 3), (string.byte)(l_0_138, 2), (string.byte)(l_0_138, 1)))
                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                          do
                                                                                                                                                                                                                                            if (hstrlog[28]).matched then
                                                                                                                                                                                                                                              local l_0_139 = (mp.readfile)((pe.foffset_va)((hstrlog[28]).VA + 9), 4)
                                                                                                                                                                                                                                              local l_0_140 = (mp.readfile)((pe.foffset_va)((hstrlog[28]).VA + 4), 4)
                                                                                                                                                                                                                                              ;
                                                                                                                                                                                                                                              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.1_%02X%02X%02X%02X_%02X%02X%02X%02X", (string.byte)(l_0_139, 4), (string.byte)(l_0_139, 3), (string.byte)(l_0_139, 2), (string.byte)(l_0_139, 1), (string.byte)(l_0_140, 4), (string.byte)(l_0_140, 3), (string.byte)(l_0_140, 2), (string.byte)(l_0_140, 1)))
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

