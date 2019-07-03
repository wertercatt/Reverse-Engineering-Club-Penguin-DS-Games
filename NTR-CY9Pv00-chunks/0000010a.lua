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
if L0_0 == 3 and _util.GetVar("M6_WildernessCliffComplete") == 0 then
  _util.SetCursorPos(426, 112)
  _util.SetVar("M6_WildernessCliffComplete", 1)
  _util.ActivateNpc(_id.M6_WildernessCliff_Klutzy, 0)
end
if L0_0 == 8 then
  _util.HideMap()
end
if L0_0 == 9 and _util.GetVar("balloonchase") == 5 then
  _util.SetVar("balloonchase", 6)
  _util.DelItem(_id.DistantHerbSkiHill)
end
