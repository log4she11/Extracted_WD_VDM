-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20847.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 then
  if (string.find)(l_0_0, "\\program files", 1, true) or (string.find)(l_0_0, "\\windows\\", 1, true) or (string.find)(l_0_0, "\\steam", 1, true) or (string.find)(l_0_0, "robloxplayer", 1, true) or (string.find)(l_0_0, "kartrider", 1, true) or (string.find)(l_0_0, "apex", 1, true) or (string.find)(l_0_0, "game", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

