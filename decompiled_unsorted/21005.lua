-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21005.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0 = nil
    if l_0_0 ~= nil and (string.len)(l_0_0) > 3 and contains(l_0_0, " copy ") and contains(l_0_0, "\\windows\\temp\\") and (contains(l_0_0, "\\share$\\") or contains(l_0_0, "\\admin$\\") or contains(l_0_0, " \\\\") or contains(l_0_0, " \"\"\\\\")) then
      bm_AddRelatedFileFromCommandLine(l_0_0)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

