-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3973.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil and (string.lower)((string.sub)(l_0_6.image_path, -9)) == "/bin/java" then
    local l_0_7 = (string.lower)((mp.GetProcessCommandLine)(l_0_6.ppid))
    if (string.find)(l_0_7, "catalina.base=/usr/share/tomcat", 1, true) then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

