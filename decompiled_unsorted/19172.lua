-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19172.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil and ((string.lower)((string.sub)(l_0_6.image_path, -13)) == "\\sqlservr.exe" or (string.lower)((string.sub)(l_0_6.image_path, -13)) == "\\sqlagent.exe") then
    return mp.INFECTED
  end
end
return mp.CLEAN

