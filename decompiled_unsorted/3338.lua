-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3338.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and pehdr.Machine == 332 and peattributes.hasexports and ((pehdr.DataDirectory)[1]).Size ~= 0 and not peattributes.isappcontainer and not peattributes.dmg_truncated and not (mp.get_mpattribute)("Clean:DllSSPExport") then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 < 10000 or l_0_0 > 1000000 then
    return mp.CLEAN
  end
  local l_0_1 = ((pehdr.DataDirectory)[1]).RVA
  ;
  (mp.readprotection)(false)
  local l_0_2 = (mp.readfile)((pe.foffset_rva)(l_0_1), 36)
  local l_0_3 = (mp.readu_u32)(l_0_2, 25)
  if l_0_3 >= 4 and l_0_3 <= 30 then
    local l_0_4 = (mp.readu_u32)(l_0_2, 33)
    local l_0_5 = 20
    local l_0_6 = 0
    for l_0_10 = 0, l_0_3 - 1 do
      local l_0_11 = l_0_4 + l_0_10 * 4
      l_0_2 = (pe.mmap_rva)(l_0_11, 4)
      local l_0_12 = (mp.readu_u32)(l_0_2, 1)
      local l_0_13 = (string.lower)((string.format)("%s", (pe.mmap_rva)(l_0_12, l_0_5)))
      if l_0_13 == "spinitialize" then
        l_0_6 = (mp.bitor)(l_0_6, 1)
      else
        if l_0_13 == "spshutdown" then
          l_0_6 = (mp.bitor)(l_0_6, 2)
        else
          if l_0_13 == "spgetinfo" then
            l_0_6 = (mp.bitor)(l_0_6, 4)
          else
            if l_0_13 == "splsamodeinitialize" then
              l_0_6 = (mp.bitor)(l_0_6, 8)
            end
          end
        end
      end
      if l_0_6 >= 15 then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

