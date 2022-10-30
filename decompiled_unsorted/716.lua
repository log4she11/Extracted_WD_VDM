-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/716.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and (string.len)(l_0_0) >= 15 then
  local l_0_1 = {}
  l_0_1["services.exe"] = true
  l_0_1["msmpeng.exe"] = true
  l_0_1["trustedinstaller.exe"] = true
  l_0_1["tiworker.exe"] = true
  l_0_1["poqexec.exe"] = true
  l_0_1["mbamservice.exe"] = true
  l_0_1["osrssinst.exe"] = true
  l_0_1["core.exe"] = true
  l_0_1["instup.exe"] = true
  l_0_1["tguard.exe"] = true
  l_0_1["nortonsecurity.exe"] = true
  l_0_1["mfehidin.exe"] = true
  l_0_1["mfeamcin.exe"] = true
  l_0_1["avp.exe"] = true
  l_0_1["computerztray.exe"] = true
  l_0_1["w32tm.exe"] = true
  l_0_1["printisolationhost.exe"] = true
  l_0_1["xlserviceplatform.exe"] = true
  l_0_1["zhudongfangyu.exe"] = true
  l_0_1["qqlivesetupex.exe"] = true
  local l_0_2 = l_0_0:match("\\([^\\]+)$")
  if l_0_2 ~= nil then
    l_0_2 = (string.lower)(l_0_2)
    if l_0_1[l_0_2] then
      return mp.CLEAN
    end
  end
end
do
  local l_0_3 = nil
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_3 = (string.lower)((this_sigattrlog[1]).utf8p2)
  end
  if l_0_3:find("\\printconfig.dll") then
    return mp.CLEAN
  else
    if l_0_3:find("\\windows\\system32\\hpzipm12.dll") then
      return mp.CLEAN
    else
      if l_0_3:find("\\windows\\system32\\w32time.dll") then
        return mp.CLEAN
      end
    end
  end
  if l_0_3 ~= nil then
    local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_3)
    for l_0_8,l_0_9 in ipairs(l_0_4) do
      l_0_9 = (mp.ContextualExpandEnvironmentVariables)(l_0_9)
      if (sysio.IsFileExists)(l_0_9) then
        (bm.add_related_file)(l_0_9)
      end
    end
  end
  do
    l_0_4 = mp
    l_0_4 = l_0_4.INFECTED
    return l_0_4
  end
end

