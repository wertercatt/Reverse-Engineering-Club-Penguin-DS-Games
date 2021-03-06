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
if L0_0 == 0 and L1_1 >= 9 and _util.GetVar("FPM03_missionComplete") == 0 and _util.GetVar("FP03_chapter") ~= L1_1 and _util.GetVar("FPM07_missionComplete") == 1 then
  _util.AddItem(_id.FP03_NPC1_Forest)
  _util.AddItem(_id.FP03_NPC2_Forest)
  _util.AddItem(_id.FP03_SnowTracks)
  _util.SetVar("FP03_introForest", 0)
  _util.SetVar("FP03_chapter", L1_1)
end
if L0_0 == 0 and L1_1 >= 9 and _util.GetVar("FPM03_missionComplete") < 3 and _util.GetVar("FPMission_Started") == 3 then
  if _util.GetVar("FPM03_SnowcatFailed") == 1 then
    _util.SetVar("FPM03_SnowcatFailed", 0)
    _util.ActivateNpc(_id.FP03_NPC1_Forest, 9)
  elseif _util.GetVar("FPM03_SnowcatSuccess") == 1 then
    _util.SetVar("FPM03_SnowcatSuccess", 0)
    _util.SetVar("FP03_introForest", 2)
    _util.AddItem(_id.FP03_TourGuide_Forest)
    _util.ActivateNpc(_id.FP03_NPC1_Forest, 10)
  end
end
if L0_0 == 0 and _util.GetVar("FPM07_missionComplete") == 0 and _util.GetVar("FP07_chapter") ~= L1_1 and L1_1 > 1 and L1_1 ~= 10 and L1_1 ~= 11 then
  _util.AddItem(_id.FPM07_ForestNPC)
  _util.AddItem(_id.FPM07_CodeForest)
  _util.SetVar("FP07_chapter", L1_1)
end
