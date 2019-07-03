local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = communicatorCheck
L2_2(L0_0, L1_1)
if L0_0 == 4 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("hitBoiler")
  if L2_2 == 2 then
    L2_2 = _util
    L2_2 = L2_2.SetExitLocked
    L2_2(_id.Doors_NightClub2Boiler, false)
  end
end
if L0_0 == 6 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M10_NC_HerbContHook")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.SetCursorPos
    L2_2(_util.GetX(_id.M10_NightClubHerbert), _util.GetY(_id.M10_NightClubHerbert))
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M10_NC_HerbContHook", 0)
    L2_2 = _util
    L2_2 = L2_2.ActivateNpc
    L2_2(_id.M10_NightClubHerbert, 2)
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("NPC/WaddleSquad/Herbert/NCAlone", _id.M10_NightClubHerbert)
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M10_ComNClub")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.ChangeBaseAnim
      L2_2("NPC/WaddleSquad/Herbert/NCPuffle", _id.M10_NightClubHerbert)
    else
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M10_ActivateHerbOnReturn")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.SetVar
        L2_2("M10_ActivateHerbOnReturn", 2)
      else
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("M10_fakeHerbertDock")
        if L2_2 == 1 then
          L2_2 = _util
          L2_2 = L2_2.HideMap
          L2_2()
          L2_2 = _util
          L2_2 = L2_2.SetExitLocked
          L2_2(_id.Doors_NightClub2Town, true)
          L2_2 = _util
          L2_2 = L2_2.SetCursorPos
          L2_2(_util.GetX(_id.M10_NightClubHerbert), _util.GetY(_id.M10_NightClubHerbert))
          L2_2 = _util
          L2_2 = L2_2.DelItem
          L2_2(_id.M10_GoldenPuffleOnStand)
          L2_2 = _util
          L2_2 = L2_2.AddItem
          L2_2(_id.M10_NightClubHerbert)
          function L2_2()
            _util.DisableInput()
            _util.SwitchState("take", _id.M10_NightClubHerbert)
            repeat
              scriptWait()
            until not _util.IsAnimPlaying(_id.M10_NightClubHerbert)
            _util.ChangeBaseAnim("NPC/WaddleSquad/Herbert/NCPuffle", _id.M10_NightClubHerbert)
            _util.ActivateNpc(_id.M10_NightClubHerbert, 150)
            _util.EnableInput(true)
          end
          scriptPlay(L2_2)
        end
      end
    end
  end
end
