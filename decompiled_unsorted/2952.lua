-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2952.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  local l_0_0 = (this_sigattrlog[4]).utf8p2
  if (string.find)(l_0_0, "/u ", 1, true) and (string.find)(l_0_0, "/s ", 1, true) then
    local l_0_1 = nil
    if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
      l_0_1 = (this_sigattrlog[1]).utf8p2
    else
      if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
        l_0_1 = (this_sigattrlog[2]).utf8p2
      else
        if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
          l_0_1 = (this_sigattrlog[3]).utf8p2
        end
      end
    end
    if l_0_1 ~= nil then
      local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
      for l_0_6,l_0_7 in ipairs(l_0_2) do
        if (sysio.IsFileExists)(l_0_7) then
          (bm.add_related_file)(l_0_7)
        end
      end
    end
    do
      do
        l_0_2 = mp
        l_0_2 = l_0_2.INFECTED
        do return l_0_2 end
        l_0_0 = mp
        l_0_0 = l_0_0.CLEAN
        return l_0_0
      end
    end
  end
end

