-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21541.luac 

-- params : ...
-- function num : 0
pcallEx("maceSendConfig", maceSendConfig, "mace_zloader")
pcallEx("reportRelatedBmHits", reportRelatedBmHits)
local l_0_0 = function()
  -- function num : 0_0
  local l_1_0 = (bm.get_current_process_startup_info)()
  local l_1_1 = "DllMsiexecInject.A_CmdLineDll"
  if (MpCommon.GetPersistContextCountNoPath)(l_1_1) > 0 then
    local l_1_2 = (MpCommon.GetPersistContextNoPath)(l_1_1)
    for l_1_6,l_1_7 in ipairs(l_1_2) do
      local l_1_8, l_1_9 = (string.match)(l_1_7, "([%w%p]+);([%w%p]+)")
      l_1_9 = (string.lower)(l_1_9)
      if l_1_8 == l_1_0.ppid and (string.find)(l_1_9, "\\appdata\\", 1, true) then
        do
          do
            (bm.add_threat_file)(l_1_9)
            do break end
            -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end

pcallEx("remediateDll", l_0_0)
reportPcallEx()
return mp.INFECTED

