-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21658.luac 

-- params : ...
-- function num : 0
do
  if ((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched then
    local l_0_0, l_0_1 = 0 + 1 + 1 + 1 + 1 + 1 + 1
  end
  ;
  (mp.readprotection)(false)
  local l_0_2 = nil
  do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC71: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC72: Confused about usage of register: R2 in 'UnsetPending'

    if (mp.getfilesize)() < 1400000 and (mp.getfilesize)() > 800000 and l_0_2 == 6 and (hstrlog[7]).VA == 64 + pehdr.ImageBase and (4096 > 60 and (mp.readu_u32)((mp.readfile)(0, (mp.getfilesize)() < 4096 and (mp.getfilesize)() or 4096), 61) or 8192) + 11 < 4096 and (mp.readu_u16)(l_0_3, (4096 > 60 and (mp.readu_u32)((mp.readfile)(0, (mp.getfilesize)() < 4096 and (mp.getfilesize)() or 4096), 61) or 8192) + 11 + 1) or 8192 == 89 and 600 + pehdr.ImageBase <= (hstrlog[8]).VA and (hstrlog[8]).VA <= 700 + pehdr.ImageBase then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

