-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20706.luac 

-- params : ...
-- function num : 0
do
  if not (hstrlog[1]).matched or (hstrlog[2]).matched then
    local l_0_0 = 0 + 1 + 1
  end
  do
    if ((((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (hstrlog[6]).matched) and not (hstrlog[7]).matched) or (hstrlog[8]).matched then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC67: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC71: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC75: Unhandled construct in 'MakeBoolean' P3

    if ((mp.getfilesize)() < 800000 and l_0_1 >= 1) or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 == 8 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

