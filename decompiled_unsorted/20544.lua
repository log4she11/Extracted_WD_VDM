-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20544.luac 

-- params : ...
-- function num : 0
for l_0_3 = 1, mp.SIGATTR_LOG_SZ do
  if (sigattr_tail[l_0_3]).matched and (sigattr_tail[l_0_3]).attribute == 16393 then
    local l_0_4 = (sigattr_tail[l_0_3]).utf8p1
    if l_0_4 then
      l_0_4 = (string.lower)(l_0_4)
      if l_0_4 and ((string.find)(l_0_4, "useraccountcontrolsettings.exe") or (string.find)(l_0_4, "taskmgr.exe")) then
        local l_0_5 = (sigattr_tail[l_0_3]).utf8p2
        if (string.len)(l_0_5) > 1 then
          return mp.INFECTED
        end
      end
    end
  end
end
return mp.CLEAN

