-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19772.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["winword.exe"] = true
l_0_0["excel.exe"] = true
l_0_0["powerpnt.exe"] = true
l_0_0["outlook.exe"] = true
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil then
  for l_0_5 = 1, 4 do
    local l_0_6 = (string.lower)(l_0_1.image_path)
    if l_0_0[l_0_6:match("([^\\]+)$")] then
      return mp.INFECTED
    else
      l_0_1 = (mp.GetParentProcInfo)(l_0_1.ppid)
      l_0_5 = l_0_5 + 1
    end
  end
end
do
  return mp.CLEAN
end

