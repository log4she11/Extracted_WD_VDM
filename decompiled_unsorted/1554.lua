-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1554.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (bm.get_process_relationships)()
for l_0_6,l_0_7 in ipairs(l_0_1) do
  if l_0_7.image_path ~= nil and l_0_7.ppid ~= nil then
    local l_0_8 = (mp.bitand)(l_0_7.reason_ex, 1)
    if l_0_8 == 1 then
      local l_0_9 = (string.lower)(l_0_7.image_path)
      if l_0_9 ~= nil and l_0_0 == l_0_9 then
        (bm.request_SMS)(l_0_7.ppid, "M")
        return mp.INFECTED
      end
    end
  end
end
return mp.CLEAN

