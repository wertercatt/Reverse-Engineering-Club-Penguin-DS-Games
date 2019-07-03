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
if L0_0 == 0 and L1_1 == 6 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("FP06_SetAlerts")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("FP06_SetAlerts", 1)
    L2_2 = _util
    L2_2 = L2_2.AddMapAlert
    L2_2(_const.STORY_MISSION, 414, 53, _const.M3C1MISSIONSTART, 110, 40)
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM01_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddMapAlert
      L2_2(_const.FREEPLAY_MISSION, 210, 150, _const.FREEPLAY1START, 70, 70)
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
          L2_2 = L2_2.AddMapAlert
          L2_2(_const.FREEPLAY_MISSION, 423, 236, _const.FREEPLAY9START, 132, 104)
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
      L2_2 = L2_2.AddMapAlert
      L2_2(_const.FREEPLAY_MISSION, 600, 317, _const.FREEPLAY4START, 153, 135)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM10_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddMapAlert
      L2_2(_const.FREEPLAY_MISSION, 525, 317, _const.FREEPLAY10START, 153, 135)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM07_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddMapAlert
      L2_2(_const.FREEPLAY_MISSION, 560, 215, _const.FREEPLAY7START, 169, 108)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM02_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddMapAlert
      L2_2(_const.FREEPLAY_MISSION, 475, 110, _const.FREEPLAY2START, 168, 79)
    end
    L2_2 = _util
    L2_2 = L2_2.SetObjective
    L2_2(625)
  end
end
if L0_0 == 1 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M1C2_introDone")
  if L2_2 == 0 then
    function L2_2()
      local L0_3
      L0_3 = 0
      _util.DisableInput()
      _util.SwitchState("opening", _id.M1C2_Director_Monitor)
      repeat
        L0_3 = L0_3 + 1
        scriptWait()
        if L0_3 >= 60 and _util.GetVar("M1C2_soundStarted") == 0 then
          _util.PlaySFX(19)
          _util.SetVar("M1C2_soundStarted", 1)
        end
      until not _util.IsAnimPlaying(_id.M1C2_Director_Monitor)
      _util.SwitchState("open", _id.M1C2_Director_Monitor)
      _util.AddItem(_id.M1C2_Director_PTR)
      _util.EnableInput()
      _util.ActivateNpc(_id.M1C2_Director_PTR, 0)
    end
    scriptPlay(L2_2)
    _util.SetPuffle(_id.Inventory_NoPuffle)
    _util.HideMap()
  end
end
if L0_0 == 2 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("introDone")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(_util.GetX(_id.M2C2_PuffleHandler), _util.GetY(_id.M2C2_PuffleHandler))
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M2C2_PuffleHandler, 0)
    L2_2 = _util
    L2_2 = L2_2.SetObjective
    L2_2(246)
    L2_2 = _util
    L2_2 = L2_2.RemoveMapAlert
    L2_2(_const.M2C2MISSIONSTART)
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM01_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY1START)
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
    L2_2 = L2_2("FPM10_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY10START)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM07_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY7START)
    end
  end
end
if L0_0 == 3 and L1_1 == 1 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M3C1_trainingIntro")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M3C1_trainingIntro", 1)
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_PINK)
    L2_2 = _util
    L2_2 = L2_2.DisablePuffle
    L2_2(_const.FLAG_PURPLE)
    L2_2 = _util
    L2_2 = L2_2.RemoveMapAlert
    L2_2(_const.M3C1MISSIONSTART)
    L2_2 = _util
    L2_2 = L2_2.SetObjective
    L2_2(248)
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(_util.GetX(_id.M3C1_BubbleHandlerSleep), _util.GetY(_id.M3C1_BubbleHandlerSleep))
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M3C1_BubbleHandlerSleep, 0)
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
    L2_2 = L2_2("FPM10_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY10START)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM07_missionComplete")
    if L2_2 == 0 then
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
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M3C1_bubblePopped")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.HideMap
    L2_2()
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M3C1_impressedLoop")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M3C1_tiedJetpack")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetPuffle
      L2_2(_id.Inventory_PufflePink)
      L2_2 = _util
      L2_2 = L2_2.EnablePuffle
      L2_2(_const.FLAG_PINK)
      L2_2 = _util
      L2_2 = L2_2.SetSpawn
      L2_2(0, _id.M3C1_GoalieDefeated)
      L2_2 = _util
      L2_2 = L2_2.SetSpawn
      L2_2(0, _id.M3C1_FanNPC)
      L2_2 = _util
      L2_2 = L2_2.HideMap
      L2_2()
      L2_2 = _util
      L2_2 = L2_2.SetExitLocked
      L2_2(_id.Doors_Puffle2Dojo, true)
    end
  end
end
if L0_0 == 3 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.HideMap
  L2_2()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M3C2_enteredRoom")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(_util.GetX(_id.M3C2_PuffleTraining_PH), _util.GetY(_id.M3C2_PuffleTraining_PH))
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M3C2_PuffleTraining_PH, 0)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M3C2_enteredRoom", 1)
  end
end
