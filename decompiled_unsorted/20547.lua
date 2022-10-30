-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20547.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if MpCommon.SECURITY_MANDATORY_MEDIUM_RID < l_0_0.integrity_level then
  return mp.CLEAN
end
local l_0_1 = (bm.get_imagepath)()
do
  if l_0_1 ~= nil then
    local l_0_2 = {}
    l_0_2["cmstp.exe"] = true
    l_0_2["dllhost.exe"] = true
    if l_0_2[((string.lower)((string.sub)(l_0_1, -15))):match("\\([^\\]+)$")] then
      return mp.CLEAN
    end
  end
  ;
  (bm.add_related_file)(l_0_1)
  return mp.INFECTED
end

