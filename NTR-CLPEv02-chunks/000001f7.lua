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
if L0_0 == 0 then
  if _util.GetVar("FPM04_missionComplete") == 0 and _util.GetVar("FP04_chapter") ~= L1_1 then
    _util.AddItem(_id.FPM04_Pizza_Guy)
    _util.SetVar("FPM04_Mission_Started", 0)
    _util.SetVar("FP04_chapter", L1_1)
  elseif _util.GetVar("FPM04_missionComplete") == 1 and _util.GetVar("FPM05_missionComplete") == 0 and _util.GetVar("FP05_chapter") ~= L1_1 and L1_1 > 1 and L1_1 ~= 7 and L1_1 ~= 10 and L1_1 ~= 11 then
    if _util.GetVar("FP04_chapter") == L1_1 then
      _util.DelItem(_id.FPM04_Pizza_Guy)
      _util.SetSpawn(0, _id.FPM04_Pool_Guy)
      _util.SetSpawn(0, _id.FPM04_Guitar_Guy)
      _util.SetSpawn(0, _id.FPM04_Miner_Guy)
      _util.SetSpawn(0, _id.FPM04_Lookout_Guy)
    end
    _util.AddItem(_id.FPM05_Pizza_Guy)
    _util.SetVar("FP05_chapter", L1_1)
  end
end
