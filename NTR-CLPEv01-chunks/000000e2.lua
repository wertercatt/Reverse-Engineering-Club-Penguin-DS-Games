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
if L0_0 == 4 and L1_1 == 2 then
  if _util.GetVar("M4C2_introRoof") == 0 then
    _util.ActivateNpc(_id.M4C2_WBot_Roof, 0)
  end
  if _util.GetVar("M4C2_haveWB") == 1 then
    _util.ShowMap()
  else
    _util.HideMap()
  end
end
if L0_0 == 5 and _util.GetVar("robostatus") == 0 and 4 <= _util.GetVar("M5C1_intro") and _util.GetVar("M5C1_Gary_talked") == 0 then
  _util.SetVar("M5C1_Gary_talked", 1)
  _util.ActivateNpc(_id.M5C1_Gary_GiftRoof, 0)
end
