-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20670.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, "\\program files", 1, true) then
  return mp.CLEAN
end
local l_0_2 = (mp.enum_mpattributesubstring)("Behavior:")
if #l_0_2 == 0 or l_0_2 == nil then
  return mp.CLEAN
end
for l_0_6,l_0_7 in ipairs(l_0_2) do
  (bm.add_related_string)("RelatedBMHits", l_0_7, bm.RelatedStringBMReport)
end
return mp.INFECTED

