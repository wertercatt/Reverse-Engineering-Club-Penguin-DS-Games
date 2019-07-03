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
if L0_0 == 1 and L1_1 == 1 and _util.GetVar("M1C1_snowIntro") == 0 then
  _util.ActivateNpc(_id.M1C1_DotSnowman, 20)
  _util.SetVar("M1C1_snowIntro", 1)
end
if L0_0 == 0 and L1_1 > 4 and _util.GetVar("FPM09_missionComplete") == 0 and _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FP09_chapter") ~= L1_1 then
  _util.AddItem(_id.FPM09_Rory)
  _util.SetVar("FP09_chapter", L1_1)
end
