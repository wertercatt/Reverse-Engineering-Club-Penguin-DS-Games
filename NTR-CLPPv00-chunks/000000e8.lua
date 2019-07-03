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
if L0_0 == 0 and L1_1 == 4 and _util.GetVar("FP04_SetAlerts") == 0 then
  _util.SetVar("FP04_SetAlerts", 1)
  _util.AddMapAlert(_const.STORY_MISSION, 414, 53, _const.M2C2MISSIONSTART, 110, 40)
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
  _util.SetObjective(487)
end
if L0_0 == 1 and L1_1 == 2 and _util.GetVar("M1C2_TrainingDoorUnlocked") == 0 and _util.GetVar("M1C2_introDojo") == 0 then
  _util.SetVar("M1C2_introDojo", 1)
  _util.HideMap()
  _util.SetPuffle(_id.Inventory_NoPuffle)
  _util.RemoveMapAlert(_const.M1C2MISSIONSTART)
  if _util.GetVar("FPM01_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY1START)
  end
  if _util.GetVar("FPM04_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY4START)
  end
  if _util.GetVar("FPM10_missionComplete") == 0 then
    _util.RemoveMapAlert(_const.FREEPLAY10START)
  end
  _util.SetCursorPos(_util.GetX(_id.M1C2_Dot_Dojo), _util.GetY(_id.M1C2_Dot_Dojo))
  _util.ActivateNpc(_id.M1C2_Dot_Dojo, 0)
  _util.SetObjective(171)
end
if L0_0 == 3 and L1_1 == 2 then
  _util.HideMap()
  _util.SetCursorPos(124, 120)
  _util.ActivateNpc(_id.M3C2_PH_Dojo, 0)
end
