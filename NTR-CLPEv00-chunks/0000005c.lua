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
if L0_0 == 0 and _util.GetVar("FPM10_missionComplete") == 0 and L1_1 > 0 and L1_1 ~= 10 and L1_1 ~= 12 and _util.GetVar("FP10_chapter") ~= L1_1 then
  _util.AddItem(_id.FPM10_PetShopClerk)
  _util.AddItem(_id.FPM10_PuffleOwner)
  _util.SetVar("FP10_chapter", L1_1)
end
