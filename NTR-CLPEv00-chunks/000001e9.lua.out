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
if L0_0 == 0 and L1_1 == 7 and _util.GetVar("FP07_SetAlerts") == 0 then
  _util.SetVar("FP07_SetAlerts", 1)
  _util.AddMapAlert(_const.STORY_MISSION, 84, 221, _const.M3C2MISSIONSTART, 62, 125)
  if _util.GetVar("FPM01_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 210, 150, _const.FREEPLAY1START, 70, 70)
  elseif _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FPM09_missionComplete") == 0 then
    _util.AddMapAlert(_const.FREEPLAY_MISSION, 423, 236, _const.FREEPLAY9START, 132, 104)
  end
  if _util.GetVar("FPM04_missionComplete") == 0 then
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
  _util.SetObjective(625)
end
if L0_0 == 3 and L1_1 == 2 and _util.GetVar("M3C2_introBeacon") == 0 then
  _util.SetVar("M3C2_introBeacon", 1)
  _util.HideMap()
  _util.SetObjective(249)
  _util.RemoveMapAlert(_const.M3C2MISSIONSTART)
  if _util.GetVar("FPM01_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY1START)
  elseif _util.GetVar("FPM01_missionComplete") == 1 and _util.GetVar("FPM09_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY9START)
  end
  if _util.GetVar("FPM04_missionComplete") == 0 then
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
  _util.SetCursorPos(_util.GetX(_id.M3C2_JPG_Beacon), _util.GetY(_id.M3C2_JPG_Beacon))
  _util.ActivateNpc(_id.M3C2_JPG_Beacon, 0)
end
if L0_0 == 5 then
  if _util.GetVar("robostatus") == 4 and _util.GetVar("M5C1_introBeacon") == 0 then
    _util.SetVar("M5C1_introBeacon", 1)
    _util.HideMap()
    _util.SetCursorPos(_util.GetX(_id.M5C1_SuperRobot_Beacon), _util.GetY(_id.M5C1_SuperRobot_Beacon))
    _util.SetVar("M5C1_moveBalloon", 1)
    _util.ActivateNpc(_id.M5C1_Balloon, 50)
  elseif _util.GetVar("M5C1_introBeacon") == 1 and _util.GetVar("AnvilHit") == 0 then
    _util.ActivateNpc(_id.M5C1_Balloon, 50)
  end
end
