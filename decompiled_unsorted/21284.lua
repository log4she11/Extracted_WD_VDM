-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21284.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 15, 255)
local l_0_1 = 1
while 1 do
  while 1 do
    while 1 do
      while 1 do
        while 1 do
          while 1 do
            while 1 do
              if l_0_1 < #l_0_0 then
                local l_0_3 = 1
                if (string.byte)(l_0_0, l_0_1) == 254 then
                  if (string.byte)(l_0_0, l_0_1 + 1) ~= 192 then
                    return mp.CLEAN
                  end
                  l_0_3 = l_0_3 + 1
                  do
                    local l_0_2 = nil
                    l_0_1 = l_0_1 + 2
                    -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC31: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
            -- DECOMPILER ERROR at PC32: Confused about usage of register: R3 in 'UnsetPending'

            if l_0_2 == 4 then
              l_0_3 = l_0_3 + (string.byte)(l_0_0, l_0_1 + 1)
              l_0_1 = l_0_1 + 2
              -- DECOMPILER ERROR at PC41: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC41: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
          -- DECOMPILER ERROR at PC42: Confused about usage of register: R3 in 'UnsetPending'

          if l_0_2 == 44 then
            l_0_3 = l_0_3 - (string.byte)(l_0_0, l_0_1 + 1)
            l_0_1 = l_0_1 + 2
            -- DECOMPILER ERROR at PC51: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC51: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
        -- DECOMPILER ERROR at PC52: Confused about usage of register: R3 in 'UnsetPending'

        if l_0_2 == 60 then
          local l_0_4 = nil
          do
            do
              if (l_0_3 + 110 <= (string.byte)(l_0_0, l_0_1 + 1) and (string.byte)(l_0_0, l_0_1 + 1) <= l_0_3 + 112) or (string.byte)(l_0_0, l_0_1 + 1) == l_0_3 then
                local l_0_5 = nil
                ;
                (pe.mmap_patch_va)(pevars.sigaddr + (l_0_1) + 16, "\235")
                return mp.INFECTED
              end
              l_0_1 = l_0_1 + 2
              -- DECOMPILER ERROR at PC80: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC80: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC80: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
      -- DECOMPILER ERROR at PC81: Confused about usage of register: R3 in 'UnsetPending'

      if l_0_4 == 116 then
        l_0_1 = l_0_1 + 2
        -- DECOMPILER ERROR at PC84: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC84: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
    -- DECOMPILER ERROR at PC85: Confused about usage of register: R3 in 'UnsetPending'

    if l_0_4 == 117 then
      l_0_1 = l_0_1 + ((string.byte)(l_0_0, l_0_1 + 1) + 2)
      -- DECOMPILER ERROR at PC94: LeaveBlock: unexpected jumping out IF_THEN_STMT

      -- DECOMPILER ERROR at PC94: LeaveBlock: unexpected jumping out IF_STMT

    end
  end
  return mp.CLEAN
end
do
  return mp.CLEAN
end

