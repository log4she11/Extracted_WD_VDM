-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1079.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0.integrity_level <= MpCommon.SECURITY_MANDATORY_LOW_RID then
  local l_0_1 = (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_0.ppid)
  if l_0_0.integrity_level < l_0_1.IntegrityLevel then
    local l_0_2 = nil
    for l_0_6 = 1, mp.SIGATTR_LOG_SZ do
      if (sigattr_tail[l_0_6]).matched and (sigattr_tail[l_0_6]).attribute == 16393 then
        l_0_2 = (sigattr_tail[l_0_6]).utf8p2
        if l_0_2 ~= nil then
          local l_0_7 = (mp.GetExecutablesFromCommandLine)(l_0_2)
          for l_0_11,l_0_12 in ipairs(l_0_7) do
            l_0_12 = (mp.ContextualExpandEnvironmentVariables)(l_0_12)
            if (sysio.IsFileExists)(l_0_12) then
              (bm.add_related_file)(l_0_12)
            end
          end
        end
      end
    end
    do return mp.INFECTED end
    -- DECOMPILER ERROR at PC66: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end
l_0_1 = mp
l_0_1 = l_0_1.CLEAN
return l_0_1

