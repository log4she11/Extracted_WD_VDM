-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4096.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
local l_0_3 = nil
if (bm.GetProcedureMatchDuration)(1) < (bm.GetProcedureMatchDuration)(0) then
  l_0_3 = (bm.GetProcedureMatchDuration)(0) - (bm.GetProcedureMatchDuration)(1)
else
  l_0_3 = (bm.GetProcedureMatchDuration)(1) - (bm.GetProcedureMatchDuration)(0)
end
if l_0_3 > 20000000 then
  return mp.CLEAN
end
if (this_sigattrlog[3]).matched then
  l_0_2 = (this_sigattrlog[3]).utf8p1
else
  if (this_sigattrlog[4]).matched then
    l_0_2 = (this_sigattrlog[4]).utf8p1
  else
    if (this_sigattrlog[5]).matched then
      l_0_2 = (this_sigattrlog[5]).utf8p1
    else
      if (this_sigattrlog[6]).matched then
        l_0_2 = (this_sigattrlog[6]).utf8p1
      else
        if (this_sigattrlog[8]).matched then
          l_0_2 = (this_sigattrlog[8]).utf8p1
        else
          if (this_sigattrlog[7]).matched then
            l_0_2 = (this_sigattrlog[7]).utf8p1
          else
            if (this_sigattrlog[9]).matched then
              l_0_2 = (this_sigattrlog[9]).utf8p1
            end
          end
        end
      end
    end
  end
end
if (string.match)(l_0_2, "^/home/") or (string.match)(l_0_2, "^/root/") or (string.match)(l_0_2, "^/tmp/") or (string.match)(l_0_2, "^/var/") then
  (bm.trigger_sig)("BMExecutionFromScriptInSuspLocation", l_0_2)
  return mp.INFECTED
end
return mp.CLEAN

