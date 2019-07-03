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
if L0_0 == 1 and L1_1 == 1 and _util.GetVar("M1C1_beachIntro") == 0 and _util.GetVar("M1C1_haveMap") == 1 then
  _util.AddMonologue(167)
  _util.SetVar("M1C1_beachIntro", 1)
end
if L0_0 == 0 and L1_1 == 1 then
  if _util.GetVar("FP01_beachIntro") == 0 then
    _util.AddMapAlert(_const.STORY_MISSION, 414, 53, _const.M1C2MISSIONSTART, 110, 40)
    if _util.GetVar("FPM01_missionComplete") == 0 then
      _util.AddMapAlert(_const.FREEPLAY_MISSION, 210, 150, _const.FREEPLAY1START, 70, 70)
    end
    if _util.GetVar("FPM04_missionComplete") == 0 then
      _util.AddMapAlert(_const.FREEPLAY_MISSION, 600, 317, _const.FREEPLAY4START, 153, 135)
    end
    if _util.GetVar("FPM10_missionComplete") == 0 then
      _util.AddMapAlert(_const.FREEPLAY_MISSION, 525, 317, _const.FREEPLAY10START, 153, 135)
    end
    _util.SetObjective(487)
    _util.SetVar("FP01_beachIntro", 1)
  end
  if _util.GetVar("LoadDone") == 0 then
    _util.SetPuffle(_id.Inventory_NoPuffle)
    _util.SetVar("LoadDone", 1)
  end
  if _util.GetVar("M1C1_dotOutro") == 1 and _util.GetVar("M1C1_doOnce") == 0 then
    _util.AddMonologue(198)
    _util.SetVar("M1C1_doOnce", 1)
  end
end
if L0_0 == 5 then
  if _util.GetVar("robostatus") == 3 and _util.GetVar("M5C1_introBeach") == 0 then
    _util.SetVar("M5C1_introBeach", 1)
    _util.SetCursorPos(_util.GetX(_id.M5C1_SuperRobot_Beach), _util.GetY(_id.M5C1_SuperRobot_Beach))
    _util.ActivateNpc(_id.M5C1_SuperRobot_Beach, 10)
  elseif _util.GetVar("robostatus") > 3 and _util.GetVar("M5C1_focusFlit") == 0 then
    _util.SetVar("M5C1_focusFlit", 1)
    _util.SetCursorPos(_util.GetX(_id.M5C1_Flit_Beach), _util.GetY(_id.M5C1_Flit_Beach))
  end
end
