local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 1 then
  _util.SetExitLocked(_id.Doors_C1_TrainingRoom, true)
  _util.SetVar("C1_Targetlight", 0)
  if _util.GetVar("c1_trainingCave2ActivateRookie") == 0 then
    _util.ActivateNpc(_id.M1_TC1_Rookie, 0)
    _util.SetVar("c1_trainingCave2ActivateRookie", 1)
  end
end
