-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22070.luac 

-- params : ...
-- function num : 0
do
  if not (hstrlog[1]).matched then
    local l_0_0, l_0_5, l_0_6, l_0_8, l_0_11, l_0_15, l_0_20, l_0_25, l_0_26, l_0_28, l_0_31 = (hstrlog[2]).matched
  end
  do
    if not (hstrlog[3]).matched and not (hstrlog[4]).matched and not (hstrlog[5]).matched and not (hstrlog[6]).matched and not (hstrlog[7]).matched and not (hstrlog[8]).matched and not (hstrlog[9]).matched and not (hstrlog[10]).matched and not (hstrlog[11]).matched and not (hstrlog[12]).matched and not (hstrlog[13]).matched and not (hstrlog[14]).matched and not (hstrlog[15]).matched and not (hstrlog[16]).matched then
      local l_0_1, l_0_7, l_0_9, l_0_12, l_0_16, l_0_21, l_0_27, l_0_29, l_0_32 = , (hstrlog[17]).matched
    end
    do
      if not (hstrlog[18]).matched and not (hstrlog[19]).matched and not (hstrlog[20]).matched and not (hstrlog[21]).matched then
        local l_0_2, l_0_10, l_0_13, l_0_17, l_0_22, l_0_30, l_0_33 = , (hstrlog[22]).matched
      end
      do
        if not (hstrlog[23]).matched and not (hstrlog[24]).matched and not (hstrlog[25]).matched and not (hstrlog[26]).matched and not (hstrlog[27]).matched and not (hstrlog[28]).matched and not (hstrlog[29]).matched and not (hstrlog[30]).matched then
          local l_0_3, l_0_14, l_0_18, l_0_23, l_0_34 = , (hstrlog[31]).matched
        end
        -- DECOMPILER ERROR at PC183: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC185: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC187: Confused about usage of register: R2 in 'UnsetPending'

        -- DECOMPILER ERROR at PC189: Confused about usage of register: R3 in 'UnsetPending'

        if l_0_3 and l_0_14 and l_0_18 and l_0_23 and not peattributes.hasexports or ((pesecs[1]).SizeOfRawData >= 135168 and (pesecs[1]).SizeOfRawData <= 167936 and (pesecs[3]).VirtualAddress > 139264 and (pesecs[3]).VirtualAddress <= 204800 and (pesecs[3]).SizeOfRawData >= 29952 and (pesecs[3]).SizeOfRawData <= 103680) then
          (mp.changedetectionname)(186)
          return mp.INFECTED
        end
        -- DECOMPILER ERROR at PC200: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC202: Confused about usage of register: R1 in 'UnsetPending'

        -- DECOMPILER ERROR at PC204: Confused about usage of register: R2 in 'UnsetPending'

        -- DECOMPILER ERROR at PC206: Confused about usage of register: R3 in 'UnsetPending'

        if l_0_3 and l_0_14 and l_0_18 and l_0_23 then
          return mp.SUSPICIOUS
        end
        do return mp.CLEAN end
        -- DECOMPILER ERROR: 4 unprocessed JMP targets
      end
    end
  end
end

