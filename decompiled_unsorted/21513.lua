-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21513.luac 

-- params : ...
-- function num : 0
getrawu32 = function(l_1_0)
  -- function num : 0_0
  (mp.readprotection)(false)
  local l_1_1 = mp.readu_u32
  do
    local l_1_4 = mp.readfile
    l_1_4 = l_1_4((pe.foffset_va)(l_1_0), 4)
    local l_1_2 = nil
    l_1_2 = 1
    local l_1_3 = nil
    do return l_1_1(l_1_4, l_1_2) end
    -- DECOMPILER ERROR at PC17: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

if (hstrlog[1]).matched then
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0A")
  local l_0_0 = nil
  l_0_0 = getrawu32((hstrlog[1]).VA + 1328)
  if l_0_0 == 2537292765 then
    (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_6DF1")
  end
else
  do
    do
      if (hstrlog[2]).matched then
        local l_0_1 = nil
        l_0_1 = getrawu32((hstrlog[2]).VA + 667)
        if l_0_1 == 87682159 then
          (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!xor_plus.1_0D")
          ;
          (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k4_k5.0_6FF3")
        end
      end
      return mp.CLEAN
    end
  end
end

