-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4008.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
TrackPidAndTechniqueBM("BM", "T1571", "CommandAndControl")
TrackPidAndTechniqueBM("BM", "T1021.004", "LateralMovement")
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil and (not (string.find)(l_0_0, "/usr/sbin/sshd", -14, true) or not (string.find)(l_0_1.image_path, "/usr/sbin/sshd", -14, true)) then
  TrackPidAndTechniqueBM(l_0_1.ppid, "T1571", "CommandAndControl")
  TrackPidAndTechniqueBM(l_0_1.ppid, "T1021.004", "LateralMovement")
end
return mp.INFECTED

