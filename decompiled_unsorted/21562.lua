-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21562.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["cmd.exe"] = true
l_0_0["powershell.exe"] = true
local l_0_1 = nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (this_sigattrlog[1]).ppid
else
  if (this_sigattrlog[2]).matched then
    l_0_1 = (this_sigattrlog[2]).ppid
  else
    if (this_sigattrlog[3]).matched then
      l_0_1 = (this_sigattrlog[3]).ppid
    else
      if (this_sigattrlog[4]).matched then
        l_0_1 = (this_sigattrlog[4]).ppid
      else
        if (this_sigattrlog[5]).matched then
          l_0_1 = (this_sigattrlog[5]).ppid
        else
          return mp.CLEAN
        end
      end
    end
  end
end
local l_0_2 = nil
if (this_sigattrlog[6]).matched then
  l_0_2 = (this_sigattrlog[6]).ppid
else
  return mp.CLEAN
end
for l_0_6 = 1, 5 do
  if l_0_6 > 6 then
    return mp.CLEAN
  end
  local l_0_7, l_0_8 = (bm.get_process_relationships)(l_0_1)
  for l_0_12,l_0_13 in ipairs(l_0_8) do
    if l_0_13.reason == 1 then
      local l_0_14 = (string.lower)((string.match)(l_0_13.image_path, "\\([^\\]+)$"))
      if l_0_13.ppid == l_0_2 then
        return mp.INFECTED
      else
        if l_0_0[l_0_14] ~= true then
          (mp.ReportLowfi)(l_0_13.image_path, 187850996)
          return mp.CLEAN
        end
      end
      l_0_1 = l_0_13.ppid
    end
  end
end
do return mp.CLEAN end
-- DECOMPILER ERROR at PC118: Confused about usage of register R4 for local variables in 'ReleaseLocals'


