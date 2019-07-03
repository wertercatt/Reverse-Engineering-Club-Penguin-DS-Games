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
if L0_0 == 3 then
  _util.ChangeBaseAnim("MissionObjects/QuestionsCrab/scripted/SnakeGadgetFish", _id.M6_SnakePiece)
  if _util.GetVar("EscapedFromCave") == 1 then
    _util.ChangeBaseAnim("MissionObjects/QuestionsCrab/static/caveSnowRiver", _id.M6_CaveDoorRiver)
    _util.ChangeBaseAnim("MissionObjects/QuestionsCrab/static/caveSnowStump", _id.M6_CaveDoorStump)
  end
end
