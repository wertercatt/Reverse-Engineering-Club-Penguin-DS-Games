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
if _util.IsCommandCoachActive() then
  _util.AddItem(_id.M1C1_NPCCoach)
  _util.DelItem(_id.M1C1_CommandCoachCover)
  _util.DelItem(_id.M1C1_CommandCoachOpen)
else
  _util.DelItem(_id.M1C1_NPCCoach)
  _util.AddItem(_id.M1C1_CommandCoachCover)
  _util.AddItem(_id.M1C1_CommandCoachOpen)
end
if L0_0 == 0 and L1_1 == 3 and _util.GetVar("FP03_SetAlerts") == 0 then
  _util.SetVar("FP03_SetAlerts", 1)
  _util.AddMapAlert(_const.STORY_MISSION, 210, 130, _const.M2C1MISSIONSTART, 70, 70)
  if _util.GetVar("FPM01_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 210, 150, _const.FREEPLAY1START, 70, 70)
  end
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
if L0_0 == 0 and L1_1 == 8 and _util.GetVar("FP08_SetAlerts") == 0 then
  _util.SetVar("FP08_SetAlerts", 1)
  _util.AddMapAlert(_const.STORY_MISSION, 210, 130, _const.M3C3MISSIONSTART, 70, 70)
  if _util.GetVar("FPM01_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 210, 150, _const.FREEPLAY1START, 70, 70)
  elseif _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FPM09_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 423, 236, _const.FREEPLAY9START, 132, 104)
  end
  if _util.GetVar("FPM04_missionComplete") == 0 or _util.GetVar("FPM05_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 600, 317, _const.FREEPLAY4START, 153, 135)
  end
  if _util.GetVar("FPM10_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 525, 317, _const.FREEPLAY10START, 153, 135)
  end
  if _util.GetVar("FPM07_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 560, 215, _const.FREEPLAY7START, 169, 108)
  end
  if _util.GetVar("FPM02_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 475, 110, _const.FREEPLAY2START, 168, 79)
  end
  if _util.GetVar("FPM06_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 112, 377, _const.FREEPLAY6START, 100, 135)
  end
  if _util.GetVar("FPM08_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 190, 80, _const.FREEPLAY8START, 75, 65)
  end
  _util.SetObjective(492)
end
if L0_0 == 0 and L1_1 == 12 and _util.GetVar("FP12_SetAlerts") == 0 then
  _util.SetVar("FP12_SetAlerts", 1)
  _util.AddMapAlert(_const.STORY_MISSION, 564, 295, _const.M5C1MISSIONSTART, 153, 135)
  if _util.GetVar("FPM01_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 210, 150, _const.FREEPLAY1START, 70, 70)
  elseif _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FPM09_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 423, 236, _const.FREEPLAY9START, 132, 104)
  end
  if _util.GetVar("FPM04_missionComplete") == 0 or _util.GetVar("FPM05_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 600, 317, _const.FREEPLAY4START, 153, 135)
  end
  if _util.GetVar("FPM07_missionComplete") == 0 or _util.GetVar("FPM03_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 560, 215, _const.FREEPLAY7START, 169, 108)
  end
  if _util.GetVar("FPM02_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 475, 110, _const.FREEPLAY2START, 168, 79)
  end
  if _util.GetVar("FPM06_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 112, 377, _const.FREEPLAY6START, 100, 135)
  end
  if _util.GetVar("FPM08_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 190, 80, _const.FREEPLAY8START, 75, 65)
  end
  _util.SetObjective(492)
  _util.EnableSpyPodFunc(_const.FLAG_FLASHLIGHT)
end
if L0_0 == 0 and L1_1 == 13 and _util.GetVar("FP13_SetAlerts") == 0 then
  _util.SetVar("FP13_SetAlerts", 1)
  if _util.GetVar("FPM01_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 210, 150, _const.FREEPLAY1START, 70, 70)
  elseif _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FPM09_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 423, 236, _const.FREEPLAY9START, 132, 104)
  end
  if _util.GetVar("FPM04_missionComplete") == 0 or _util.GetVar("FPM05_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 600, 317, _const.FREEPLAY4START, 153, 135)
  end
  if _util.GetVar("FPM10_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 525, 317, _const.FREEPLAY10START, 153, 135)
  end
  if _util.GetVar("FPM07_missionComplete") == 0 or _util.GetVar("FPM03_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 560, 215, _const.FREEPLAY7START, 169, 108)
  end
  if _util.GetVar("FPM02_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 475, 110, _const.FREEPLAY2START, 168, 79)
  end
  if _util.GetVar("FPM06_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 112, 377, _const.FREEPLAY6START, 100, 135)
  end
  if _util.GetVar("FPM08_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 190, 80, _const.FREEPLAY8START, 75, 65)
  end
  _util.SetObjective(492)
end
if L0_0 == 1 and L1_1 == 2 then
  _util.HideMap()
  if _util.GetVar("M1C2_antennaCombined") == 0 then
    _util.DisableSpyPodFunc(_const.FLAG_COMMUNICATOR)
  end
  if _util.GetVar("M1C2_HQKeypadComplete") == 1 and _util.GetVar("M1C2_LastCutscene") == 0 and _util.GetVar("M1C2_introCommand") == 0 then
    _util.SetVar("M1C2_introCommand", 1)
    _util.ActivateNpc(_id.M1C2_Dot_CR, 0)
  end
  if _util.GetVar("M1C2_LastCutscene") == 1 and _util.GetVar("M1C2_DirectorIsBack") == 0 then
    _util.ActivateNpc(_id.ScreenOn_CR, 423)
    _util.SetVar("M1C2_DirectorIsBack", 1)
    _util.DelItem(_id.M1C2_SecretCode)
  end
end
if L0_0 == 1 and L1_1 == 3 and _util.GetVar("M1C3_introCR") == 0 then
  _util.ActivateNpc(_id.Screen_CR, 42)
  _util.HideMap()
  _util.ClearCom()
  _util.SetVar("M1C3_introCR", 1)
end
if L0_0 == 2 and L1_1 == 1 and _util.GetVar("directorDone") == 0 then
  _util.HideMap()
  _util.ActivateNpc(_id.Screen_CR, 42)
  _util.SetObjective(178)
  _util.RemoveMapAlert(_const.M2C1MISSIONSTART)
  if _util.GetVar("FPM01_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY1START)
  end
  if _util.GetVar("FPM04_missionComplete") == 0 or _util.GetVar("FPM05_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY4START)
  end
  if _util.GetVar("FPM10_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY10START)
  end
  if _util.GetVar("FPM07_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY7START)
  end
end
if L0_0 == 2 and L1_1 == 3 then
  _util.SetCursorPos(_util.GetX(_id.Screen_CR), _util.GetY(_id.Screen_CR))
  _util.ActivateNpc(_id.Screen_CR, 42)
end
if L0_0 == 3 and L1_1 == 1 and _util.GetVar("M3C1_startDirector") == 0 then
  _util.ActivateNpc(_id.Screen_CR, 42)
  _util.SetVar("M3C1_startDirector", 1)
end
if L0_0 == 3 and L1_1 == 3 then
  if _util.GetVar("M3C3_chapterIntroComplete") == 0 then
    _util.RemoveMapAlert(_const.M3C3MISSIONSTART)
    _util.SetObjective(183)
    if _util.GetVar("FPM01_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY1START)
    elseif _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FPM09_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY9START)
    end
    if _util.GetVar("FPM04_missionComplete") == 0 or _util.GetVar("FPM05_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY4START)
    end
    if _util.GetVar("FPM10_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY10START)
    end
    if _util.GetVar("FPM07_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY7START)
    end
    if _util.GetVar("FPM02_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY2START)
    end
    if _util.GetVar("FPM06_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY6START)
    end
    if _util.GetVar("FPM08_missionComplete") == 0 then
      _util.RemoveMapAlert(_const.FREEPLAY8START)
    end
    _util.SetCursorPos(_util.GetX(_id.Screen_CR), _util.GetY(_id.Screen_CR), 1)
    _util.ActivateNpc(_id.Screen_CR, 42)
    _util.DisableDpadScrolling()
  end
  if _util.GetVar("M3C3_GaryWent2Command") == 1 then
    _util.SetCursorPos(_util.GetX(_id.M3C3_Director), _util.GetY(_id.M3C3_Director))
    _util.DelItem(_id.Screen_CR)
    _util.AddItem(_id.ScreenOn_CR)
    _util.SwitchState("", _id.ScreenOn_CR)
    _util.AddItem(_id.M3C3_OilCan)
    _util.AddItem(_id.M3C3_RoboLocator)
    _util.AddItem(_id.M3C3_InnerTube)
    _util.ActivateNpc(_id.M3C3_Director, 220)
  end
end
if L0_0 == 5 and _util.GetVar("M5C1_startDirector") == 0 then
  _util.ActivateNpc(_id.Screen_CR, 42)
  _util.SetVar("M5C1_startDirector", 1)
end
