-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19952.luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("pea_hasexports") and (mp.get_mpattribute)("pea_isdll") and (mp.get_mpattribute)("pea_amd64_image") and (mp.getfilesize)() >= 208384 and (mp.getfilesize)() < 232960 then
    local l_0_0 = (mp.GetCertificateInfo)()
    for l_0_4,l_0_5 in pairs(l_0_0) do
      if l_0_5.Signers ~= nil then
        return mp.CLEAN
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

