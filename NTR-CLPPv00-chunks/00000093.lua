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
if L0_0 == 0 and L1_1 == 0 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("FP00_intro")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("FP00_intro", 1)
    L2_2 = _util
    L2_2 = L2_2.SetObjective
    L2_2(487)
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(200, 200)
  end
end
if L0_0 == 0 and L1_1 == 10 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("FP10_SetAlerts")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("FP10_SetAlerts", 1)
    L2_2 = _util
    L2_2 = L2_2.AddMapAlert
    L2_2(_const.STORY_MISSION, 245, 250, _const.M4C2MISSIONSTART, 102, 115)
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
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddMapAlert
      L2_2(_const.FREEPLAY_MISSION, 600, 317, _const.FREEPLAY4START, 153, 135)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM07_missionComplete")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("FPM03_missionComplete")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.AddMapAlert
        L2_2(_const.FREEPLAY_MISSION, 560, 215, _const.FREEPLAY7START, 169, 108)
      end
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
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM06_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddMapAlert
      L2_2(_const.FREEPLAY_MISSION, 112, 377, _const.FREEPLAY6START, 100, 135)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM08_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.AddMapAlert
      L2_2(_const.FREEPLAY_MISSION, 190, 80, _const.FREEPLAY8START, 75, 65)
    end
    L2_2 = _util
    L2_2 = L2_2.SetObjective
    L2_2(487)
  end
end
if L0_0 == 4 and L1_1 == 2 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M4C2_introTown")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.SetObjective
    L2_2(180)
    L2_2 = _util
    L2_2 = L2_2.RemoveMapAlert
    L2_2(_const.M4C2MISSIONSTART)
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M4C2_Dot_Town, 0)
    L2_2 = _util
    L2_2 = L2_2.DisableSpyPodFunc
    L2_2(_const.FLAG_SNOWCAT)
    L2_2 = _util
    L2_2 = L2_2.AddMapAlert
    L2_2(_const.ROBOT, 300, 310, _const.M4C2ROBOTGIFT, 102, 115)
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
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.RemoveMapAlert
      L2_2(_const.FREEPLAY4START)
    end
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FPM07_missionComplete")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("FPM03_missionComplete")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.RemoveMapAlert
        L2_2(_const.FREEPLAY7START)
      end
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
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M4C2_comSetup")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.ClearCom
    L2_2()
    L2_2 = _util
    L2_2 = L2_2.SetupComNpc
    L2_2(_const.COM_GARY, _id.M4C2_Gary_GR, 0)
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M4C2_comSetup", 1)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M4C2_introDeadBot")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M4C2_deadWB")
    if L2_2 == 2 then
      L2_2 = _util
      L2_2 = L2_2.SetCursorPos
      L2_2(_util.GetX(_id.M4C2_Dot_Town), _util.GetY(_id.M4C2_Dot_Town))
      L2_2 = _util
      L2_2 = L2_2.ActivateNpc
      L2_2(_id.M4C2_Dot_Town, 100)
    end
  end
end
if L0_0 == 5 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M5C1_intro")
  if L2_2 == 4 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M5C1_introTown")
    if L2_2 == 0 then
      function L2_2()
        if _util.GetVar("M5C1_StuffSpawned") == 0 then
          _util.AddItem(_id.M5C1_SuperRobot_GiftRoof)
          _util.AddItem(_id.M5C1_Gary_GiftRoof)
          _util.SetVisible(0, _id.M5C1_Gary_GiftRoof)
          _util.AddItem(_id.M5C1_GiftClerk_GiftShop)
          _util.AddItem(_id.M5C1_Dot_Town)
          _util.AddItem(_id.M5C1_Hole)
          _util.AddItem(_id.M5C1_PizzaChef)
          _util.AddItem(_id.M5C1_PetShopClerk)
          _util.AddItem(_id.M5C1_Agent_Plaza)
          _util.AddItem(_id.M5C1_Agent_SnowFort)
          _util.SetSpawn(0, _id.M5C1_Dot_GR)
          _util.SetExitLocked(_id.Doors_HQ2SportUL, false)
          _util.AddItem(_id.Doors_MineLair2Out)
          _util.SetVar("M5C1_StuffSpawned", 1)
        end
        _util.SetVar("M5C1_introTown", 1)
        _util.ActivateNpc(_id.M5C1_Dot_Town, 1)
        _util.RemoveMapAlert(_const.M5C1MISSIONSTART)
        _util.AddMapAlert(_const.SUPER_ROBOT, 259, 310, _const.M5C1ROBOTTOWN, 102, 115)
        _util.SetObjective(182)
        _util.DisableSpyPodFunc(_const.FLAG_SNOWCAT)
      end
      scriptPlay(L2_2)
    end
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("robostatus")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M5C1_Dot_talked")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.DisableInput
        L2_2()
        L2_2 = _util
        L2_2 = L2_2.ShowMap
        L2_2()
        L2_2 = _util
        L2_2 = L2_2.SetPuffle
        L2_2(_id.Inventory_PuffleRed)
        L2_2 = _util
        L2_2 = L2_2.EnablePuffle
        L2_2(_const.FLAG_RED)
        L2_2 = _util
        L2_2 = L2_2.SetVar
        L2_2("M5C1_Dot_talked", 1)
        L2_2 = _util
        L2_2 = L2_2.SetCursorPos
        L2_2(_util.GetX(_id.M5C1_Dot_Town), _util.GetY(_id.M5C1_Dot_Town))
        L2_2 = _util
        L2_2 = L2_2.EnableInput
        L2_2()
        L2_2 = _util
        L2_2 = L2_2.ActivateNpc
        L2_2(_id.M5C1_Dot_Town, 3)
      end
    end
  end
end
if L0_0 == 0 and L1_1 >= 2 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("FPMission_Started")
  if L2_2 == 7 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("FP07_missionComplete")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("FPM07_decodedTownMessage")
      if L2_2 == 0 then
        L2_2 = _util
        L2_2 = L2_2.ActivateNpc
        L2_2(_id.FPM07_TownNPC, 0)
      end
    end
  end
end
