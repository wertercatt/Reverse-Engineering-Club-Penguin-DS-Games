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
if L0_0 == 4 and _util.GetVar("removedDrillWindow") == 1 then
  _util.ChangeBaseAnim("MissionObjects/MysteriousTremors/state/UGBoilerWindowCartridgeBroken", _id.M8_SnakePiece2)
end
