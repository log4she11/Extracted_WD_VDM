-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21732.luac 

-- params : ...
-- function num : 0
local l_0_0 = 13
local l_0_1 = (pe.mmap_va)(pevars.sigaddr + l_0_0, 96)
local l_0_2 = (string.byte)(l_0_1, 2) + 1
if #l_0_1 < l_0_2 then
  return mp.CLEAN
end
if (string.byte)(l_0_1, l_0_2) ~= 116 then
  return mp.CLEAN
end
local l_0_3 = (string.byte)(l_0_1, l_0_2 + 1) + 2 + l_0_2
if #l_0_1 < l_0_3 then
  return mp.CLEAN
end
if (string.byte)(l_0_1, l_0_3) ~= 232 then
  return mp.CLEAN
end
local l_0_4 = l_0_2 + 2
local l_0_5 = 0
local l_0_6 = false
while 1 do
  if l_0_4 < #l_0_1 then
    local l_0_7 = (string.byte)(l_0_1, l_0_4)
    local l_0_8 = false
    if l_0_7 == 131 and (string.byte)(l_0_1, l_0_4 + 1) == 248 then
      l_0_4 = l_0_4 + 3
    else
      if l_0_7 == 61 then
        l_0_4 = l_0_4 + 5
      else
        if l_0_7 == 195 then
          l_0_8 = true
          l_0_4 = l_0_4 + 1
        else
          if l_0_7 == 0 then
            l_0_8 = true
            l_0_4 = l_0_4 + 2
          else
            if l_0_7 == 15 and (string.byte)(l_0_1, l_0_4 + 1) == 132 then
              l_0_4 = l_0_4 + 6
            else
              if l_0_7 == 116 then
                if l_0_3 ~= (string.byte)(l_0_1, l_0_4 + 1) + (l_0_4) then
                  l_0_5 = l_0_5 + 1
                end
                if l_0_5 == 2 then
                  return mp.CLEAN
                end
              else
                if l_0_7 == 204 then
                  local l_0_9 = (string.format)("\235%s", (string.char)(l_0_3 - 3))
                  ;
                  (pe.mmap_patch_va)(pevars.sigaddr + l_0_0, l_0_9)
                  return mp.LOWFI
                else
                  do
                    do
                      do return mp.CLEAN end
                      if l_0_6 ~= true or l_0_8 == false then
                        return mp.CLEAN
                      end
                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC150: LeaveBlock: unexpected jumping out IF_STMT

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
return mp.CLEAN

