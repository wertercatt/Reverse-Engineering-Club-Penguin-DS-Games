local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
mapCheck(L0_0, L1_1)
if L0_0 == 7 then
  _util.SwitchState("look", _id.M11_GS_NPC_JPG)
  _util.SetVar("CheckForClues", 1)
end
