-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20209.luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[1]).matched or not (this_sigattrlog[1]).wp2 then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[1]).utf8p2
do
  if l_0_0 and not (string.find)(l_0_0:lower(), "\\amazon\\amazon assistant\\", 1, true) then
    local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    ;
    (MpCommon.SetPersistContextNoPath)("mshta_start", l_0_1, 3)
  end
  return mp.CLEAN
end

