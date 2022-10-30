-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20890.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_0 ~= nil then
  for l_0_5,l_0_6 in ipairs(l_0_0) do
    if l_0_6.image_path ~= nil then
      local l_0_7 = (string.lower)(l_0_6.image_path)
      if (string.find)(l_0_7, "\\tanium client\\taniumclient.exe", -31, true) then
        return mp.CLEAN
      else
        if (string.find)(l_0_7, "\\syncappvpublishingserver.exe", -29, true) then
          TrackPidAndTechniqueBM("BM", "T1490", "inhibit_system_recovery")
          return mp.INFECTED
        end
      end
    end
  end
end
do
  return mp.INFECTED
end

