local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = setupItems
L2_2(L0_0, L1_1)
L2_2 = spypodCheck
L2_2(L0_0, L1_1)
L2_2 = mapCheck
L2_2(L0_0, L1_1)
L2_2 = communicatorCheck
L2_2(L0_0, L1_1)
if L0_0 == 0 and L1_1 == 12 then
  function L2_2()
    _util.DisableInput()
    _util.SetCursorPos(_util.GetX(_id.M5C1_Dot_Stage), _util.GetY(_id.M5C1_Dot_Stage))
    _util.SwitchState("surprise", _id.M5C1_Dot_Stage)
    _util.SwitchState("surprise", _id.M5C1_Rookie_Stage)
    _util.SwitchState("surprise", _id.M5C1_PH_Stage)
    _util.SwitchState("surprise", _id.M5C1_JPG_Stage)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.M5C1_Rookie_Stage)
    _util.EnableInput()
    _util.ActivateNpc(_id.M5C1_Dot_Stage, 100)
  end
  if _util.GetVar("M5C1_crash") ~= 2 then
    _util.DisableSpyPodFunc(_const.FLAG_HEADQUARTERS)
    _util.HideMap()
  end
  if _util.GetVar("M5C1_introStage") == 0 then
    _util.SetVar("M5C1_introStage", 1)
    _util.DisablePuffle(_const.FLAG_YELLOW)
    _util.DisablePuffle(_const.FLAG_RED)
    _util.DisablePuffle(_const.FLAG_BLUE)
    _util.DisablePuffle(_const.FLAG_BLACK)
    _util.DisablePuffle(_const.FLAG_PURPLE)
    _util.DisablePuffle(_const.FLAG_PINK)
    _util.DisablePuffle(_const.FLAG_GREEN)
    _util.SetPuffle(_id.Inventory_NoPuffle)
    _util.DisableSpyPodFunc(_const.FLAG_SNOWCAT)
    scriptPlay(L2_2)
  end
end
if L0_0 == 5 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M5C1_PufflesDisabled")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_YELLOW)
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_RED)
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_BLUE)
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_BLACK)
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_PURPLE)
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_PINK)
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_GREEN)
    L2_2 = _util
    L2_2 = L2_2.SetPuffle
    L2_2(_id.Inventory_NoPuffle)
    L2_2 = _util
    L2_2 = L2_2.DisableSpyPodFunc
    L2_2(_const.FLAG_SNOWCAT)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M5C1_PufflesDisabled", 1)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M5C1_ComSetup")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetObjective
    L2_2(504)
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM01_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY1START)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("FPM01_missionComplete")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("FPM09_missionComplete")
        if L2_2 == 0 then
          L2_2 = _util
          L2_2 = L2_2.RemoveMapAlert
          L2_2(_const.FREEPLAY9START)
        end
      end
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM04_missionComplete")
    if L2_2 ~= 0 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("FPM05_missionComplete")
    elseif L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY4START)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM07_missionComplete")
    if L2_2 ~= 0 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("FPM03_missionComplete")
    elseif L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY7START)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM02_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY2START)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM06_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY6START)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM08_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY8START)
    end
    L2_2 = _util
    L2_2 = L2_2.ClearCom
    L2_2()
    L2_2 = _util
    L2_2 = L2_2.SetupComNpc
    L2_2(_const.COM_DIRECTOR, _id.M5C1_Director, 0)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M5C1_ComSetup", 1)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M5C1_crash")
  if L2_2 ~= 2 then
    L2_2 = _util
    L2_2 = L2_2.DisableSpyPodFunc
    L2_2(_const.FLAG_HEADQUARTERS)
    L2_2 = _util
    L2_2 = L2_2.HideMap
    L2_2()
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M5C1_crash")
  if L2_2 < 2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M5C1_introStage2")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("M5C1_introStage2", 1)
      L2_2 = _util
      L2_2 = L2_2.DelItem
      L2_2(_id.M5C1_JPG_Stage)
      L2_2 = _util
      L2_2 = L2_2.DelItem
      L2_2(_id.M5C1_Dot_Stage)
      L2_2 = _util
      L2_2 = L2_2.DelItem
      L2_2(_id.M5C1_Rookie_Stage)
      L2_2 = _util
      L2_2 = L2_2.DelItem
      L2_2(_id.M5C1_PH_Stage)
      L2_2 = _util
      L2_2 = L2_2.AddItem
      L2_2(_id.M5C1_JPG_StageCrash)
      L2_2 = _util
      L2_2 = L2_2.AddItem
      L2_2(_id.M5C1_Dot_StageCrash)
      L2_2 = _util
      L2_2 = L2_2.AddItem
      L2_2(_id.M5C1_Rookie_StageCrash)
      L2_2 = _util
      L2_2 = L2_2.AddItem
      L2_2(_id.M5C1_PH_StageCrash)
      L2_2 = _util
      L2_2 = L2_2.SetCursorPos
      L2_2(_util.GetX(_id.M5C1_JPG_StageCrash), _util.GetY(_id.M5C1_JPG_StageCrash))
      L2_2 = _util
      L2_2 = L2_2.ActivateNpc
      L2_2(_id.M5C1_JPG_StageCrash, 1)
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M5C1_crash")
  if L2_2 == 2 then
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(_util.GetX(_id.M5C1_Dot_StageCrash), _util.GetY(_id.M5C1_Dot_StageCrash))
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M5C1_crash", 3)
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M5C1_Dot_StageCrash, 101)
  end
end
