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
if L0_0 == 1 and L1_1 == 3 then
  if _util.GetVar("M1C3_firstTime") == 0 and _util.GetVar("M1C3_introDotSnowman") == 1 then
    _util.AddMonologue(534)
    _util.SetVar("M1C3_firstTime", 1)
  end
  if _util.GetVar("M1C3_uberVariable") == 7 then
    _util.SetSuitcaseItemEnabled(_id.SuitCase_ProBoard, true)
  end
end
if L0_0 == 4 and L1_1 == 3 then
  _util.HideMap()
  if _util.GetVar("M4C3_introDot") == 0 then
    _util.SetObjective(181)
    _util.RemoveMapAlert(_const.M4C3MISSIONSTART)
    if _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FPM09_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY9START)
    end
    if _util.GetVar("FPM04_missionComplete") == 0 or _util.GetVar("FPM05_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY4START)
    end
    if _util.GetVar("FPM10_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY10START)
    end
    if _util.GetVar("FPM07_missionComplete") == 1 and _util.GetVar("FPM03_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY7START)
    end
    if _util.GetVar("FPM02_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY2START)
    end
    if _util.GetVar("FPM06_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY6START)
    end
    _util.SetCursorPos(_util.GetX(_id.M4C3_Dot_SH), _util.GetY(_id.M4C3_Dot_SH))
    _util.DisableSpyPodFunc(_const.FLAG_SNOWCAT)
    _util.ActivateNpc(_id.M4C3_Dot_SH, 100)
  end
end
if L0_0 == 0 and L1_1 >= 2 and _util.GetVar("FPMission_Started") == 7 and _util.GetVar("FP07_missionComplete") == 0 and _util.GetVar("FPM07_decodedSkiMessage") == 0 then
  _util.ActivateNpc(_id.FPM07_SkiNPC, 0)
end
if L0_0 == 0 and _util.GetVar("FPM08_missionComplete") == 0 and _util.GetVar("FP08_chapter") ~= L1_1 and L1_1 > 7 and L1_1 ~= 11 then
  _util.AddItem(_id.FPM08_Mitten_SkiHill)
  _util.SetVar("FP08_chapter", L1_1)
end
