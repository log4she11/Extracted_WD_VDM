-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21796.luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched then
  local l_0_0 = (pe.mmap_va_nofastfail)((hstrlog[1]).VA + 9, 4)
  local l_0_1 = (pe.mmap_va_nofastfail)((hstrlog[1]).VA + 15, 1)
  ;
  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", (mp.readu_u32)(l_0_0, 1), (string.byte)(l_0_1, 1)))
else
  do
    if (hstrlog[2]).matched then
      local l_0_2 = (pe.mmap_va_nofastfail)((hstrlog[2]).VA + 5, 4)
      ;
      (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", (mp.readu_u32)(l_0_2, 1), 2))
    else
      do
        if (hstrlog[3]).matched then
          local l_0_3 = (pe.mmap_va_nofastfail)((hstrlog[3]).VA + 11, 4)
          ;
          (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", (mp.readu_u32)(l_0_3, 1), 2))
        else
          do
            if (hstrlog[4]).matched then
              local l_0_4 = (pe.mmap_va_nofastfail)((hstrlog[4]).VA + 5, 4)
              ;
              (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", (mp.readu_u32)(l_0_4, 1), 2))
            else
              do
                if (hstrlog[5]).matched then
                  local l_0_5 = (pe.mmap_va_nofastfail)((hstrlog[5]).VA + 5, 4)
                  ;
                  (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", (mp.readu_u32)(l_0_5, 1), 2))
                else
                  do
                    do
                      if (hstrlog[6]).matched then
                        local l_0_6 = (pe.mmap_va_nofastfail)((hstrlog[6]).VA + 15, 4)
                        ;
                        (mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.5_%08X_%08X", (mp.readu_u32)(l_0_6, 1), 2))
                      end
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

