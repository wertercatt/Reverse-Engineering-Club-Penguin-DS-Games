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
if L0_0 == 0 and L1_1 == 9 and _util.GetVar("FP09_SetAlerts") == 0 then
  _util.SetVar("FP09_SetAlerts", 1)
  _util.AddMapAlert(_const.STORY_MISSION, 210, 130, _const.M4C1MISSIONSTART, 70, 70)
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
  _util.SetObjective(625)
end
if L0_0 == 3 and L1_1 == 3 then
  if _util.GetVar("M3C3_SnowcatFailed") == 1 then
    _util.SetVar("M3C3_SnowcatFailed", 0)
    _util.SetVar("M3C3_playedSnowCat", 1)
  end
  if _util.GetVar("M3C3_haveCocoaMachine") == 1 and _util.GetVar("M3C3_gadgetRoomIntroComplete") == 0 then
    _util.ClearCom()
  end
  if _util.GetVar("M3C3_gadgetRoomIntroComplete") == 1 and _util.GetVar("M3C3_GotOil") == 0 then
    _util.ClearCom()
    _util.DisableSpyPodFunc(_const.FLAG_HEADQUARTERS)
    _util.HideMap()
  end
  if _util.GetVar("M3C3_outroCommenced") == 1 and _util.GetVar("M3C3_GaryWent2Command") == 0 then
    _util.ClearCom()
  end
end
if L0_0 == 4 and L1_1 == 1 then
  if _util.GetVar("M4C1_chapterIntroComplete") == 0 then
    _util.SetCursorPos(_util.GetX(_id.M4C1_Gary_Gadget), _util.GetY(_id.M4C1_Gary_Gadget))
    _util.ActivateNpc(_id.M4C1_Gary_Gadget, 0)
    _util.SetObjective(251)
    _util.RemoveMapAlert(_const.M4C1MISSIONSTART)
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
    if _util.GetVar("FPM07_missionComplete") == 0 or _util.GetVar("FPM03_missionComplete") == 0 then
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
  end
  if _util.GetVar("M4C1_chapterIntroComplete") == 1 then
    _util.SetVar("M4C1_leftGR", 1)
  end
end
if L0_0 == 4 and L1_1 == 2 and _util.GetVar("M4C2_gadgetRoomIntro") == 0 and _util.GetVar("M4C2_deadWB") == 2 then
  _util.AddItem(_id.M4C2_Gary_GR)
  _util.ActivateNpc(_id.M4C2_Gary_GR, 0)
end
