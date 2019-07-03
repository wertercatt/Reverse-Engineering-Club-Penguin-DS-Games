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
if L0_0 == 1 and L1_1 == 3 then
  _util.HideMap()
  if _util.GetVar("M1C3_introCliff") == 0 then
    _util.AddMonologue(638)
    _util.SetSpawn(0, _id.Doors_WildRiverDoor2Berry)
    _util.SetSpawn(0, _id.Doors_WildBerryDoor2River)
    _util.SetVar("M1C3_introCliff", 1)
  end
end
if L0_0 == 4 and L1_1 == 3 then
  _util.HideMap()
  if _util.GetVar("M4C3_introWilderness") == 0 then
    _util.SetVar("M4C3_introWilderness", 1)
    _util.SetCursorPos(_util.GetX(_id.M4C3_SBot_WC), _util.GetY(_id.M4C3_SBot_WC))
    _util.ActivateNpc(_id.M4C3_SBot_WC, 100)
  end
end
