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
if L0_0 == 0 and L1_1 == 5 and _util.GetVar("FP05_SetAlerts") == 0 then
  _util.SetVar("FP05_SetAlerts", 1)
  _util.AddMapAlert(_const.STORY_MISSION, 475, 110, _const.M2C3MISSIONSTART, 164, 83)
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
  _util.SetObjective(492)
end
if L0_0 == 2 and L1_1 == 3 then
  _util.HideMap()
  if _util.GetVar("M2C3_introMineint") == 0 then
    _util.SetVar("M2C3_introMineint", 1)
    _util.SetObjective(180)
    _util.RemoveMapAlert(_const.M2C3MISSIONSTART)
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
  end
end
if L0_0 == 3 and L1_1 == 1 then
  _util.HideMap()
end
if L0_0 == 0 and L1_1 >= 6 and _util.GetVar("FPM02_missionComplete") == 0 and _util.GetVar("FP02_chapter") ~= L1_1 then
  _util.AddItem(_id.FP02_NPC_MineInt)
  _util.SetVar("FP02_introMine", 0)
  _util.SetVar("FP02_chapter", L1_1)
end
if L0_0 == 0 and L1_1 >= 2 and _util.GetVar("FPMission_Started") == 7 and _util.GetVar("FP07_missionComplete") == 0 and _util.GetVar("FPM07_decodedMineMessage") == 0 then
  _util.ActivateNpc(_id.FPM07_MineNPC, 0)
end
