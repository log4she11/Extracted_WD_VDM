-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21224.luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
local l_0_2, l_0_3 = "\\cmd.exe", (bm.get_process_relationships)()
for l_0_7,l_0_8 in ipairs(l_0_3) do
  local l_0_4 = nil
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R8 in 'UnsetPending'

  if R8_PC8.image_path ~= nil and (string.sub)(R8_PC8.image_path, -#l_0_2) == l_0_2 and (mp.bitand)(R8_PC8.reason_ex, 1) == 1 then
    do
      do
        l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_9.ppid))
        ;
        (bm.add_threat_process)(l_0_9.ppid)
        do break end
        -- DECOMPILER ERROR at PC39: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC39: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC39: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
if l_0_1 ~= nil and #l_0_2 < #l_0_1 then
  local l_0_10 = nil
  for l_0_14,l_0_15 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1)) do
    local l_0_11 = nil
    if (string.sub)((mp.bitand)(R8_PC8.reason_ex, 1), -#l_0_2) ~= l_0_2 and (sysio.IsFileExists)((mp.bitand)(R8_PC8.reason_ex, 1)) then
      (bm.add_threat_file)((mp.bitand)(R8_PC8.reason_ex, 1))
    end
  end
end
do
  return mp.INFECTED
end

