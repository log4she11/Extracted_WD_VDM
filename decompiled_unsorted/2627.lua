-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2627.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_0 == nil then
  return mp.CLEAN
end
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil then
    local l_0_7 = "svchost.exe|taskeng.exe|taskhostw.exe"
    local l_0_8 = (string.lower)((string.match)(l_0_6.image_path, "\\([^\\]+)$"))
    if l_0_8 ~= nil and (string.find)(l_0_7, l_0_8) then
      local l_0_9 = "c:\\windows\\system32\\tasks"
      ;
      (mp.TriggerScanResource)("folder", l_0_9)
    else
      do
        do
          do return mp.CLEAN end
          -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC43: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
return mp.INFECTED

