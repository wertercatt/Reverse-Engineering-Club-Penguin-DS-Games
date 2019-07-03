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
if L0_0 == 0 and L1_1 == 11 and _util.GetVar("FP11_SetAlerts") == 0 then
  _util.SetVar("FP11_SetAlerts", 1)
  _util.AddMapAlert(_const.STORY_MISSION, 210, 130, _const.M4C3MISSIONSTART, 70, 70)
  if _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FPM09_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 423, 236, _const.FREEPLAY9START, 132, 104)
  end
  if _util.GetVar("FPM04_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 600, 317, _const.FREEPLAY4START, 153, 135)
  end
  if _util.GetVar("FPM10_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 525, 317, _const.FREEPLAY10START, 153, 135)
  end
  if _util.GetVar("FPM07_missionComplete") == 1 and _util.GetVar("FPM03_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 560, 215, _const.FREEPLAY7START, 169, 108)
  end
  if _util.GetVar("FPM02_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 475, 110, _const.FREEPLAY2START, 168, 79)
  end
  if _util.GetVar("FPM06_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 112, 377, _const.FREEPLAY6START, 100, 135)
  end
  _util.SetObjective(492)
end
if L0_0 == 1 and L1_1 == 3 and _util.GetVar("M1C3_introSV") == 0 then
  _util.SetVar("M1C3_introSV", 1)
  _util.SetObjective(177)
  _util.RemoveMapAlert(_const.M1C3MISSIONSTART)
  if _util.GetVar("FPM04_missionComplete") == 0 or _util.GetVar("FPM05_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY4START)
  end
  if _util.GetVar("FPM10_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY10START)
  end
  if _util.GetVar("FPM07_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY7START)
  end
  _util.SetCursorPos(_util.GetX(_id.M1C3_DotSnowman), _util.GetY(_id.M1C3_DotSnowman))
  _util.ActivateNpc(_id.M1C3_DotSnowman, 0)
end
if L0_0 == 5 then
  if _util.GetVar("robostatus") == 2 and _util.GetVar("M5C1_introSV") == 0 then
    _util.SetVar("M5C1_introSV", 1)
    _util.SetCursorPos(_util.GetX(_id.M5C1_SuperRobot_SkiVillage), _util.GetY(_id.M5C1_SuperRobot_SkiVillage))
    _util.ActivateNpc(_id.M5C1_SuperRobot_SkiVillage, 1)
  elseif _util.GetVar("robostatus") > 2 and _util.GetVar("M5C1_focusFlare") == 0 then
    _util.SetVar("M5C1_focusFlare", 1)
    _util.SetCursorPos(_util.GetX(_id.M5C1_Flare_SkiVillage), _util.GetY(_id.M5C1_Flare_SkiVillage))
  end
end
if L0_0 == 0 and L1_1 > 0 and L1_1 ~= 2 and L1_1 ~= 11 and _util.GetVar("FPM01_missionComplete") == 0 and _util.GetVar("FP01_chapter") ~= L1_1 then
  _util.AddItem(_id.FP01_Rory)
  _util.AddItem(_id.FP01_Thermos)
  _util.SetVar("FP01_introRory", 0)
  _util.SetVar("FP01_chapter", L1_1)
end
if L0_0 == 0 and L1_1 == 2 and _util.GetVar("FP02_SetAlerts") == 0 then
  _util.AddMapAlert(_const.STORY_MISSION, 210, 130, _const.M1C3MISSIONSTART, 70, 70)
  _util.SetVar("FP02_SetAlerts", 1)
  if _util.GetVar("FPM04_missionComplete") == 0 or _util.GetVar("FPM05_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 600, 317, _const.FREEPLAY4START, 153, 135)
  end
  if _util.GetVar("FPM10_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 525, 317, _const.FREEPLAY10START, 153, 135)
  end
  if _util.GetVar("FPM07_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 560, 215, _const.FREEPLAY7START, 169, 108)
  end
  _util.SetObjective(492)
end
