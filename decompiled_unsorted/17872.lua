-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17872.luac 

-- params : ...
-- function num : 0
do
  if peattributes.isexe and peattributes.no_security and peattributes.isvbnative and peattributes.x86_image then
    local l_0_0 = (mp.getfilesize)()
    if l_0_0 > 35840 and l_0_0 < 204800 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

