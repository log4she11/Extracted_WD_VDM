-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20228.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0.image_path)
    if l_0_1:match("([^\\]+)$") == "wmiprvse.exe" or l_0_1:match("([^\\]+)$") == "explorer.exe" or l_0_1:match("([^\\]+)$") == "mmc.exe" then
      if (versioning.IsSeville)() and (versioning.GetCloudBlockLevel)() >= 4 then
        return mp.INFECTED
      end
      return mp.LOWFI
    end
  end
  return mp.CLEAN
end

