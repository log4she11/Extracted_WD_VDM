-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20688.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
do
  if l_0_0 ~= nil and (string.find)(l_0_0, "wmic", 1, true) and (string.find)(l_0_0, "\\low\\", 1, true) and (string.find)(l_0_0, ".tmp", 1, true) then
    local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    for l_0_5,l_0_6 in ipairs(l_0_1) do
      if (sysio.IsFileExists)(l_0_6) then
        (bm.add_related_file)(l_0_6)
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

