-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20830.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if (string.find)((string.lower)(l_0_6.image_path), "\\svchost.exe", 1, true) then
    local l_0_7, l_0_8 = (string.match)(l_0_6.ppid, "^pid:(%w+),ProcessStart:(%w+)$")
    local l_0_9 = tonumber(l_0_7)
    local l_0_10 = tonumber(l_0_8)
    local l_0_11, l_0_12 = (mp.bsplit)(l_0_10, 32)
    local l_0_13 = (string.format)("ppids:{{%d,%d,%d}}\000", l_0_9, l_0_11, l_0_12)
    ;
    (mp.TriggerScanResource)("ems", l_0_13)
  end
end
return mp.INFECTED

