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
if L0_0 == 3 and L1_1 == 1 and _util.GetVar("M3C1_stageIntro") == 0 then
  _util.SetCursorPos(_util.GetX(_id.M3C1_Manager), _util.GetY(_id.M3C1_Manager))
  _util.ActivateNpc(_id.M3C1_Manager, 0)
  _util.SetVar("M3C1_stageIntro", 1)
end
