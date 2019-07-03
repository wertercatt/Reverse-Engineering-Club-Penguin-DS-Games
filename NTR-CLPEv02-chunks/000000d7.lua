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
if L0_0 == 1 and L1_1 == 3 and _util.GetVar("M1C3_uberVariable") == 5 and _util.GetVar("M1C3_gotProBoard") == 0 then
  _util.HideMap()
end
if L0_0 == 3 and L1_1 == 3 and _util.GetVar("M4C1_JPG_Status") == 0 then
  _util.SetCursorPos(_util.GetX(_id.M4C1_JPG_Lodge), _util.GetY(_id.M4C1_JPG_Lodge))
  _util.ActivateNpc(_id.M4C1_JPG_Lodge, 0)
end
