-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/162.luac 

-- params : ...
-- function num : 0
local l_0_0 = "\\([^\\]+%.exe)"
local l_0_1 = ((string.match)((string.lower)((this_sigattrlog[1]).utf8p1), l_0_0))
local l_0_2, l_0_3 = nil, nil
do
  local l_0_4 = (bm.get_imagepath)()
  if l_0_4 ~= nil then
    l_0_3 = (string.match)(l_0_4, l_0_0)
  end
  if (this_sigattrlog[2]).matched then
    l_0_2 = (this_sigattrlog[2]).utf8p1
  else
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
            if (this_sigattrlog[7]).matched then
              l_0_2 = (this_sigattrlog[7]).utf8p1
            else
              if (this_sigattrlog[8]).matched then
                l_0_2 = (this_sigattrlog[8]).utf8p1
              end
            end
          end
        end
      end
    end
  end
  if (l_0_1 == l_0_2 or l_0_1 == nil == l_0_1) and l_0_1 ~= l_0_3 then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- DECOMPILER ERROR: 2 unprocessed JMP targets
end

