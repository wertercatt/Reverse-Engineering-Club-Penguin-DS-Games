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
if L0_0 == 1 and L1_1 == 1 and _util.GetVar("M1C1_lightIntro") == 0 and _util.GetVar("M1C1_haveMap") == 1 then
  _util.SetCursorPos(_util.GetX(_id.Doors_Light2Beach), _util.GetY(_id.Doors_Light2Beach))
  _util.ActivateNpc(_id.Doors_Light2Beach, 1)
end
