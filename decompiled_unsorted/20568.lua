-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20568.luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
if (this_sigattrlog[1]).matched then
  local l_0_1 = nil
  local l_0_2, l_0_3 = (bm.get_process_relationships)()
  for l_0_7,l_0_8 in ipairs(l_0_2) do
    l_0_1 = l_0_8.image_path
    if (string.find)(l_0_1, "\\WINWORD.EXE") then
      l_0_0 = l_0_0 + 1
      break
    end
  end
  do
    local l_0_9 = nil
    for l_0_13,l_0_14 in ipairs(l_0_3) do
      l_0_9 = l_0_14.image_path
      if (string.find)(l_0_9, "\\powershell.exe") or (string.find)(l_0_9, "\\cmd.exe") then
        l_0_0 = l_0_0 + 1
        break
      end
    end
    do
      do
        if l_0_0 == 2 then
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

