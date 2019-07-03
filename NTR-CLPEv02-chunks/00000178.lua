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
if L0_0 == 2 and L1_1 == 3 then
  _util.HideMap()
  if _util.IsCommandCoachActive() == 1 and _util.GetVar("M2C3_lairIntro") == 0 then
    _util.SetVar("M2C3_lairIntro", 1)
    _util.AddItem(_id.M2C3_Crowbar)
  end
end
