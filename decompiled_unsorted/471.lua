-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/471.luac 

-- params : ...
-- function num : 0
if (mp.get_sigattr_event_count)(16384) > 50 then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_0 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_0 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_0 = (this_sigattrlog[3]).utf8p2
    else
      if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
        l_0_0 = (this_sigattrlog[4]).utf8p2
      else
        if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
          l_0_0 = (this_sigattrlog[5]).utf8p2
        else
          if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
            l_0_0 = (this_sigattrlog[6]).utf8p2
          end
        end
      end
    end
  end
end
local l_0_1 = 0
if l_0_0 ~= nil then
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_0)
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
    if (sysio.IsFileExists)(l_0_7) == true then
      local l_0_8 = {}
      l_0_8[".exe"] = true
      local l_0_9 = (string.sub)(l_0_7, -4)
      local l_0_10 = {}
      l_0_10["cmd.exe"] = true
      l_0_10["powershell.exe"] = true
      l_0_10["pwsh.exe"] = true
      l_0_10["cscript.exe"] = true
      l_0_10["wscript.exe"] = true
      l_0_10["mshta.exe"] = true
      if l_0_9 ~= nil and l_0_8[l_0_9] == true then
        local l_0_11 = (string.lower)(l_0_7:match("\\([^\\]+)$"))
        if l_0_10[l_0_11] ~= true then
          (bm.add_related_file)(l_0_7)
          ;
          (bm.add_threat_file)(l_0_7)
          l_0_1 = 1
        end
      end
    end
  end
end
do
  if l_0_1 == 1 then
    l_0_2 = mp
    l_0_2 = l_0_2.INFECTED
    return l_0_2
  end
  l_0_2 = mp
  l_0_2 = l_0_2.CLEAN
  return l_0_2
end

