-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/171.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (string.lower)((this_sigattrlog[3]).utf8p1)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    if not l_0_1:match("\\windows\\sysvol\\domain\\policies\\{%w%w%w%w%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%-%w%w%w%w%w%w%w%w%w%w%w%w}\\") then
      return mp.CLEAN
    end
    local l_0_5 = nil
    local l_0_6 = "[\000S\000o\000f\000t\000w\000a\000r\000e\000\\\000P\000o\000l\000i\000c\000i\000e\000s\000\\\000M\000i\000c\000r\000o\000s\000o\000f\000t\000\\\000W\000i\000n\000d\000o\000w\000s\000 \000D\000e\000f\000e\000n\000d\000e\000r\000\\\000R\000e\000a\000l\000-\000T\000i\000m\000e\000 \000P\000r\000o\000t\000e\000c\000t\000i\000o\000n\000\000\000;\000D\000i\000s\000a\000b\000l\000e\000R\000e\000a\000l\000t\000i\000m\000e\000M\000o\000n\000i\000t\000o\000r\000i\000n\000g\000\000\000;\000"
    local l_0_7 = "[\000S\000o\000f\000t\000w\000a\000r\000e\000\\\000P\000o\000l\000i\000c\000i\000e\000s\000\\\000M\000i\000c\000r\000o\000s\000o\000f\000t\000\\\000W\000i\000n\000d\000o\000w\000s\000 \000D\000e\000f\000e\000n\000d\000e\000r\000\000\000;\000D\000i\000s\000a\000b\000l\000e\000A\000n\000t\000i\000S\000p\000y\000w\000a\000r\000e\000\000\000;\000"
    if (sysio.GetFileSize)(l_0_5) > 50000 then
      return mp.CLEAN
    end
    local l_0_8 = nil
    do
      if (string.find)(tostring((sysio.ReadFile)(l_0_5, 0, (sysio.GetFileSize)(l_0_5))), l_0_6, 1, true) == nil or tostring((sysio.ReadFile)(l_0_5, 0, (sysio.GetFileSize)(l_0_5))) == nil then
        local l_0_10, l_0_12, l_0_14, l_0_16 = , R6_PC84, (string.find)(tostring((sysio.ReadFile)(l_0_5, 0, (sysio.GetFileSize)(l_0_5))), l_0_7, 1, true)
        l_0_12 = l_0_16
        local l_0_9, l_0_11, l_0_13, l_0_15 = nil
        if l_0_12 == nil or l_0_14 == nil then
          l_0_16 = mp
          l_0_16 = l_0_16.CLEAN
          return l_0_16
        end
      end
      -- DECOMPILER ERROR at PC94: Confused about usage of register: R4 in 'UnsetPending'

      -- DECOMPILER ERROR at PC95: Confused about usage of register: R6 in 'UnsetPending'

      -- DECOMPILER ERROR at PC101: Confused about usage of register: R4 in 'UnsetPending'

      -- DECOMPILER ERROR at PC102: Confused about usage of register: R6 in 'UnsetPending'

      -- DECOMPILER ERROR at PC109: Confused about usage of register: R4 in 'UnsetPending'

      -- DECOMPILER ERROR at PC110: Confused about usage of register: R6 in 'UnsetPending'

      if (mp.readu_u16)(l_0_10, l_0_14 + 5) == 59 and (mp.readu_u16)(l_0_10, l_0_14 + 5 + 6) == 59 and (mp.readu_u32)(l_0_10, l_0_14 + 5 + 6 + 2) == 1 then
        if (sysio.IsFileExists)(l_0_5) then
          (bm.add_related_file)(l_0_5)
        end
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

