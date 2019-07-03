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
if L0_0 == 3 or L1_1 == 3 then
  _util.HideMap()
  if _util.GetVar("M3C3_wentInCave") == 0 then
    _util.SetVar("M3C3_wentInCave", 1)
  end
end
