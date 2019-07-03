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
if L0_0 == 10 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("C4_fixingBalloon")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("MissionObjects/M4/balloonFixed", _id.C4_HerbsBalloon)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("C4_KlutzyHelp")
  if L2_2 >= 3 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("MissionObjects/M4/cablesCut", _id.C4_CablesStuck)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("C4_KlutzyHelp")
  if L2_2 >= 1 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("MissionObjects/M4/beltBreak", _id.C4_SkiBelt)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("MadeItToJPG")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.ClearCom
    L2_2()
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("MadeItToJPG", 1)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("HerbFlewAway")
  if L2_2 > 0 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("MissionObjects/M4/airshipCables", _id.C4_SkiVillage_BrokenAirShip)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("C4_HerbFloaties")
  if L2_2 < 3 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("DoNotRestoreMusic")
    if L2_2 == 1 then
      function L2_2()
        local L0_3
        L0_3 = 0
        repeat
          scriptWait()
          L0_3 = L0_3 + 1
        until L0_3 > 30
        _util.PlayHerbertLurking()
      end
      scriptPlay(L2_2)
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("freeHerbert")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("NPC/M4/Herbert/HerbRefuse", _id.C4_SkiVillage_HerbTrapped)
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("C4_KlutzyHelp")
  if L2_2 == 0 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("NPC/M4/Klutzy/KlutzyJump1", _id.C4_SkiVillage_Klutzy)
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("C4_KlutzyHelp")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.ChangeBaseAnim
      L2_2("NPC/M4/Klutzy/KlutzySki", _id.C4_SkiVillage_Klutzy)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("C4_KlutzyHelp")
      if L2_2 == 2 then
        L2_2 = _util
        L2_2 = L2_2.ChangeBaseAnim
        L2_2("NPC/M4/Klutzy/KlutzyBubble", _id.C4_SkiVillage_Klutzy)
      end
    end
  end
end
