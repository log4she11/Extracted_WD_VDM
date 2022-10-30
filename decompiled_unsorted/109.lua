-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/109.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
local l_0_1 = l_0_0:match("\\([^\\]+)$")
if l_0_1 ~= "services.exe" then
  return mp.CLEAN
end
local l_0_2 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_2 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_2 = (this_sigattrlog[2]).utf8p2
  end
end
if l_0_2 == nil or l_0_2 == "" or (mp.IsKnownFriendlyFile)(l_0_2, true, true) == true then
  return mp.CLEAN
end
if (l_0_2.find)("c:\\programdata\\microsoft\\microsoft antimalware\\definition updates", 1, true) then
  return mp.CLEAN
else
  if l_0_2:find("C:\\windowsazure\\", 1, true) then
    return mp.CLEAN
  else
    if l_0_2:find("\\system32\\drivers\\mbamswissarmy.sys", 1, true) then
      return mp.CLEAN
    else
      if l_0_2:find("\\symantec shared\\eengine\\eraserutildrv11821.sys", 1, true) then
        return mp.CLEAN
      else
        if l_0_2:find("\\spool\\drivers\\x64\\3\\printconfig.dll", 1, true) then
          return mp.CLEAN
        else
          if l_0_2:find("\\windows\\system32\\hpzipm12.dll", 1, true) then
            return mp.CLEAN
          end
        end
      end
    end
  end
end
if (sysio.IsFileExists)(l_0_2) then
  (bm.add_related_file)(l_0_2)
end
local l_0_3 = (MpCommon.GetPersistContextNoPath)("ServiceCreationScript")
if l_0_3 then
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    if (sysio.IsFileExists)(l_0_8) then
      (bm.add_related_file)(l_0_8)
    end
  end
end
do
  return mp.INFECTED
end

