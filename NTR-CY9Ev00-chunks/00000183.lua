local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 7 then
  if _util.GetVar("FixGuitar") < 2 then
    _util.ChangeBaseAnim("NPC/M11/GuitarNPC/GPBroken", _id.M11_LH_Music_NPC)
  else
    _util.ChangeBaseAnim("NPC/M11/GuitarNPC/GP", _id.M11_LH_Music_NPC)
  end
end
