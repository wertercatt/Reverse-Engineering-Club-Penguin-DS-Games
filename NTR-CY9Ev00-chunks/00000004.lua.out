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
if _util.GetVar("SawKlutzy") == 0 then
  _util.ActivateNpc(_id.C2_HBStorage_Klutzy, 0)
  _util.SetCursorPos(720, 168)
else
  _util.SetCursorPos(605, 174)
end
if _util.GetVar("C2_Event") == _id.C2_StoleHerbPlans and _util.GetVar("c2_confrontedHerbert") == 0 then
  _util.AddItem(_id.C2_HBStorage_Herbet)
  _util.ActivateNpc(_id.C2_HBStorage_Herbet, -1)
end
