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
if L0_0 == 3 and _util.GetVar("EscapedFromCave") == 1 then
  _util.ChangeBaseAnim("MissionObjects/QuestionsCrab/static/caveSnowRiver", _id.M6_CaveDoorRiver)
  _util.ChangeBaseAnim("MissionObjects/QuestionsCrab/static/caveSnowStump", _id.M6_CaveDoorStump)
end
if L0_0 == 8 then
  _util.SetExitLocked(_id.Doors_WCave2WBerry, true)
  _util.SetExitLocked(_id.Doors_WCave2WClearing, true)
  if _util.GetVar("c2_herbDoorUnlocked") == 1 then
    _util.ChangeBaseAnim("MissionObjects/M2/hatch", _id.C2_Hatch, "fullyopen")
  end
  if _util.GetVar("GrabHatchKey") == 2 then
    _util.ChangeBaseAnim("MissionObjects/M2/stumpOpen", _id.C2_Stump)
  end
end
