-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20827.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  if (string.len)(l_0_0) < 4096 then
    return mp.CLEAN
  end
  if (MpCommon.GetPersistContextCountNoPath)("Lua:MalPsSmsScanAmsi") > 0 then
    local l_0_1 = (bm.get_current_process_startup_info)()
    local l_0_2 = (MpCommon.GetPersistContextNoPath)("Lua:MalPsSmsScanAmsi")
    if l_0_2 then
      for l_0_6,l_0_7 in ipairs(l_0_2) do
        if l_0_7 == l_0_1.ppid then
          return mp.INFECTED
        end
      end
    end
  end
  do
    do
      l_0_1 = mp
      l_0_1 = l_0_1.CLEAN
      do return l_0_1 end
      l_0_0 = mp
      l_0_0 = l_0_0.CLEAN
      return l_0_0
    end
  end
end

