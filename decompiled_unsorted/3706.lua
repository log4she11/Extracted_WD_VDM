-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3706.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).wp2 ~= nil then
  return mp.INFECTED
end
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil and ((string.find)(l_0_6.image_path, "python", 1, true) or (string.find)(l_0_6.image_path, "perl", 1, true) or (string.find)(l_0_6.image_path, "osascript", 1, true)) then
    return mp.INFECTED
  end
end
return mp.CLEAN

