-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2885.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 then
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1.command_line)
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
    if (sysio.IsFileExists)(l_0_7) then
      (bm.add_related_file)(l_0_7)
    end
  end
end
do
  l_0_2 = nil
  local l_0_8 = nil
  l_0_8 = this_sigattrlog
  l_0_8 = l_0_8[3]
  l_0_8 = l_0_8.matched
  if l_0_8 then
    l_0_8 = this_sigattrlog
    l_0_8 = l_0_8[3]
    l_0_8 = l_0_8.utf8p2
    if l_0_8 ~= nil then
      l_0_8 = this_sigattrlog
      l_0_8 = l_0_8[3]
      l_0_2 = l_0_8.utf8p2
    end
  end
  if l_0_2 ~= nil then
    l_0_8 = l_0_8(l_0_2, "(%%userprofile%%\\.-ps1)")
    for l_0_12 in l_0_8 do
      local l_0_12 = nil
      l_0_12 = mp
      l_0_12 = l_0_12.ContextualExpandEnvironmentVariables
      l_0_12 = l_0_12(l_0_11)
      local l_0_13 = nil
      l_0_13 = sysio
      l_0_13 = l_0_13.IsFileExists
      l_0_13 = l_0_13(l_0_12)
      if l_0_13 then
        l_0_13 = bm
        l_0_13 = l_0_13.add_related_file
        l_0_13(l_0_12)
      end
    end
  end
  do
    do return mp.INFECTED end
    -- DECOMPILER ERROR at PC70: Confused about usage of register R3 for local variables in 'ReleaseLocals'

  end
end

