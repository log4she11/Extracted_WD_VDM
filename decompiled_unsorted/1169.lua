-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1169.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (string.lower)((bm.get_imagepath)())
  if (string.match)((string.sub)(l_0_0, -11), "_keygen.exe") and (this_sigattrlog[5]).matched and (this_sigattrlog[6]).matched then
    local l_0_1 = (string.lower)((this_sigattrlog[5]).utf8p1)
    local l_0_2 = (string.lower)((this_sigattrlog[6]).utf8p1)
    if l_0_1 ~= nil and l_0_2 ~= nil and (string.match)((string.sub)(l_0_1, -9), "%d%d%d%d%.exe") and (string.match)((string.sub)(l_0_2, -9), "%d%d%d%d%.exe") then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

