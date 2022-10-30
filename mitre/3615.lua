-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3615.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0:sub(1, 8) == "\\device\\" then
  l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
end
if l_0_0 == nil then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
;
(mp.set_mpattribute)("Lua:Context/OpenAfterDropBySysproc!" .. l_0_1)
local l_0_2 = "cscript.exe|wscript.exe|mshta.exe|cmd.exe|powershell.exe|pwsh.exe|console.exe|bash.exe|dllhost.exe|rundll32.exe|regsvr32.exe|wmiprvse.exe|svchost.exe|wsmprovhost.exe|"
if l_0_2:find(l_0_1) then
  (mp.set_mpattribute)("Lua:Context/SuspOpenAfterDropBySysproc!lolbin")
  ;
  (mp.set_mpattribute)("Lua:Context/SuspOpenAfterDropBySysproc!" .. l_0_1)
  TrackPidAndTechnique("RTP", "T1570", "exec_remotedroppedscript_a")
end
local l_0_3 = nil
if (mp.get_mpattribute)("BM_MZ_FILE") then
  local l_0_4 = {}
  l_0_4.ExeFileDropBySystemProc_sysdir = "Lua:Context/OpenExeAfterDropBySystem!sysdir"
  l_0_4.ExeFileDropBySystemProc_windir = "Lua:Context/OpenExeAfterDropBySystem!windir"
  l_0_4.ExeFileDropBySystemProc_wintemp = "Lua:Context/OpenExeAfterDropBySystem!wintemp"
  l_0_4.ExeFileDropBySystemProc_startup = "Lua:Context/OpenExeAfterDropBySystem!startup"
  l_0_4.ExeFileDropBySystemProc_desktop = "Lua:Context/OpenExeAfterDropBySystem!desktop"
  l_0_4.ExeFileDropBySystemProc_appdatalocal = "Lua:Context/OpenExeAfterDropBySystem!appdatalocal"
  l_0_4.ExeFileDropBySystemProc_usrtemp = "Lua:Context/OpenExeAfterDropBySystem!usrtemp"
  l_0_4.ExeFileDropBySystemProc_sysprof = "Lua:Context/OpenExeAfterDropBySystem!sysprof"
  l_0_4.ExeFileDropBySystemProc_sysappdata = "Lua:Context/OpenExeAfterDropBySystem!sysappdata"
  l_0_4.ExeFileDropBySystemProc_usrprofpub = "Lua:Context/OpenExeAfterDropBySystem!usrprofpub"
  l_0_4.ExeFileDropBySystemProc_usrprofdef = "Lua:Context/OpenExeAfterDropBySystem!usrprofdef"
  l_0_4.ExeFileDropBySystemProc_perflog = "Lua:Context/OpenExeAfterDropBySystem!perflog"
  l_0_4.ExeFileDropBySystemProc_spool = "Lua:Context/OpenExeAfterDropBySystem!spool"
  l_0_4.ExeFileDropBySystemProc_c_root = "Lua:Context/OpenExeAfterDropBySystem!c_root"
  l_0_4.ExeFileDropBySystemProc_d_root = "Lua:Context/OpenExeAfterDropBySystem!d_root"
  l_0_4.ExeFileDropBySystemProc_e_root = "Lua:Context/OpenExeAfterDropBySystem!e_root"
  l_0_4.ExeFileDropBySystemProc_f_root = "Lua:Context/OpenExeAfterDropBySystem!f_root"
  l_0_4.ExeFileDropBySystemProc_g_root = "Lua:Context/OpenExeAfterDropBySystem!g_root"
  l_0_4.ExeFileDropBySystemProc_h_root = "Lua:Context/OpenExeAfterDropBySystem!h_root"
  l_0_4.ExeFileDropBySystemProc_i_root = "Lua:Context/OpenExeAfterDropBySystem!i_root"
  l_0_4.ExeFileDropBySystemProc_j_root = "Lua:Context/OpenExeAfterDropBySystem!j_root"
  l_0_4.ExeFileDropBySystemProc_k_root = "Lua:Context/OpenExeAfterDropBySystem!k_root"
  l_0_4.ExeFileDropBySystemProc_l_root = "Lua:Context/OpenExeAfterDropBySystem!l_root"
  l_0_4.ExeFileDropBySystemProc_m_root = "Lua:Context/OpenExeAfterDropBySystem!m_root"
  l_0_4.ExeFileDropBySystemProc_n_root = "Lua:Context/OpenExeAfterDropBySystem!n_root"
  l_0_4.ExeFileDropBySystemProc_o_root = "Lua:Context/OpenExeAfterDropBySystem!o_root"
  l_0_4.ExeFileDropBySystemProc_p_root = "Lua:Context/OpenExeAfterDropBySystem!p_root"
  l_0_4.ExeFileDropBySystemProc_q_root = "Lua:Context/OpenExeAfterDropBySystem!q_root"
  l_0_4.ExeFileDropBySystemProc_r_root = "Lua:Context/OpenExeAfterDropBySystem!r_root"
  l_0_4.ExeFileDropBySystemProc_s_root = "Lua:Context/OpenExeAfterDropBySystem!s_root"
  l_0_4.ExeFileDropBySystemProc_t_root = "Lua:Context/OpenExeAfterDropBySystem!t_root"
  l_0_4.ExeFileDropBySystemProc_u_root = "Lua:Context/OpenExeAfterDropBySystem!u_root"
  l_0_4.ExeFileDropBySystemProc_v_root = "Lua:Context/OpenExeAfterDropBySystem!v_root"
  l_0_4.ExeFileDropBySystemProc_w_root = "Lua:Context/OpenExeAfterDropBySystem!w_root"
  l_0_4.ExeFileDropBySystemProc_x_root = "Lua:Context/OpenExeAfterDropBySystem!x_root"
  l_0_4.ExeFileDropBySystemProc_y_root = "Lua:Context/OpenExeAfterDropBySystem!y_root"
  l_0_4.ExeFileDropBySystemProc_z_root = "Lua:Context/OpenExeAfterDropBySystem!z_root"
  l_0_3 = l_0_4
else
  do
    do
      local l_0_5 = {}
      l_0_5.FileDropBySystemProc_sysdir = "Lua:Context/OpenAfterDropBySystem!sysdir"
      l_0_5.FileDropBySystemProc_windir = "Lua:Context/OpenAfterDropBySystem!windir"
      l_0_5.FileDropBySystemProc_wintemp = "Lua:Context/OpenAfterDropBySystem!wintemp"
      l_0_5.FileDropBySystemProc_startup = "Lua:Context/OpenAfterDropBySystem!startup"
      l_0_5.FileDropBySystemProc_desktop = "Lua:Context/OpenAfterDropBySystem!desktop"
      l_0_5.FileDropBySystemProc_appdatalocal = "Lua:Context/OpenAfterDropBySystem!appdatalocal"
      l_0_5.FileDropBySystemProc_usrtemp = "Lua:Context/OpenAfterDropBySystem!usrtemp"
      l_0_5.FileDropBySystemProc_sysprof = "Lua:Context/OpenAfterDropBySystem!sysprof"
      l_0_5.FileDropBySystemProc_sysappdata = "Lua:Context/OpenAfterDropBySystem!sysappdata"
      l_0_5.FileDropBySystemProc_usrprofpub = "Lua:Context/OpenAfterDropBySystem!usrprofpub"
      l_0_5.FileDropBySystemProc_usrprofdef = "Lua:Context/OpenAfterDropBySystem!usrprofdef"
      l_0_5.FileDropBySystemProc_perflog = "Lua:Context/OpenAfterDropBySystem!perflog"
      l_0_5.FileDropBySystemProc_spool = "Lua:Context/OpenAfterDropBySystem!spool"
      l_0_5.FileDropBySystemProc_c_root = "Lua:Context/OpenAfterDropBySystem!c_root"
      l_0_5.FileDropBySystemProc_d_root = "Lua:Context/OpenAfterDropBySystem!d_root"
      l_0_5.FileDropBySystemProc_e_root = "Lua:Context/OpenAfterDropBySystem!e_root"
      l_0_5.FileDropBySystemProc_f_root = "Lua:Context/OpenAfterDropBySystem!f_root"
      l_0_5.FileDropBySystemProc_g_root = "Lua:Context/OpenAfterDropBySystem!g_root"
      l_0_5.FileDropBySystemProc_h_root = "Lua:Context/OpenAfterDropBySystem!h_root"
      l_0_5.FileDropBySystemProc_i_root = "Lua:Context/OpenAfterDropBySystem!i_root"
      l_0_5.FileDropBySystemProc_j_root = "Lua:Context/OpenAfterDropBySystem!j_root"
      l_0_5.FileDropBySystemProc_k_root = "Lua:Context/OpenAfterDropBySystem!k_root"
      l_0_5.FileDropBySystemProc_l_root = "Lua:Context/OpenAfterDropBySystem!l_root"
      l_0_5.FileDropBySystemProc_m_root = "Lua:Context/OpenAfterDropBySystem!m_root"
      l_0_5.FileDropBySystemProc_n_root = "Lua:Context/OpenAfterDropBySystem!n_root"
      l_0_5.FileDropBySystemProc_o_root = "Lua:Context/OpenAfterDropBySystem!o_root"
      l_0_5.FileDropBySystemProc_p_root = "Lua:Context/OpenAfterDropBySystem!p_root"
      l_0_5.FileDropBySystemProc_q_root = "Lua:Context/OpenAfterDropBySystem!q_root"
      l_0_5.FileDropBySystemProc_r_root = "Lua:Context/OpenAfterDropBySystem!r_root"
      l_0_5.FileDropBySystemProc_s_root = "Lua:Context/OpenAfterDropBySystem!s_root"
      l_0_5.FileDropBySystemProc_t_root = "Lua:Context/OpenAfterDropBySystem!t_root"
      l_0_5.FileDropBySystemProc_u_root = "Lua:Context/OpenAfterDropBySystem!u_root"
      l_0_5.FileDropBySystemProc_v_root = "Lua:Context/OpenAfterDropBySystem!v_root"
      l_0_5.FileDropBySystemProc_w_root = "Lua:Context/OpenAfterDropBySystem!w_root"
      l_0_5.FileDropBySystemProc_x_root = "Lua:Context/OpenAfterDropBySystem!x_root"
      l_0_5.FileDropBySystemProc_y_root = "Lua:Context/OpenAfterDropBySystem!y_root"
      l_0_5.FileDropBySystemProc_z_root = "Lua:Context/OpenAfterDropBySystem!z_root"
      l_0_3 = l_0_5
      for l_0_9,l_0_10 in pairs(l_0_3) do
        if (MpCommon.QueryPersistContext)(l_0_0, l_0_9) then
          (mp.set_mpattribute)(l_0_10)
          if l_0_10:sub(-5) == "_root" then
            (mp.set_mpattribute)("Lua:Context/OpenAfterSystemDropsAtRoot")
          end
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

