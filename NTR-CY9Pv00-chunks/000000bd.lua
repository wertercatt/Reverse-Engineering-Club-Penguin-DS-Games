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
if L0_0 == 4 then
  L2_2 = _util
  L2_2 = L2_2.SetCursorPos
  L2_2(862, 113)
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M8_playHerbert1played")
  if L2_2 == 1 then
    function L2_2()
      _util.AddItem(_id.M8_DrillTL)
      _util.AddItem(_id.M8_DrillTR)
      _util.AddItem(_id.M8_KlutzyDocks)
      _util.AddItem(_id.M8_DrillBL)
      _util.AddItem(_id.M8_HerbDocks)
      _util.AddItem(_id.M8_DrillBR)
      _util.AddItem(_id.M8_DockHoleR)
      _util.AddItem(_id.M8_DockHoleL)
      _util.AddItem(_id.M8_KlutzyLantern)
      _util.AddItem(_id.M8_HerbInHole)
      _util.AddItem(_id.M8_Door2Tunnel)
      _util.SetCursorPos(730, 105)
      _util.ActivateNpc(32310, 0)
      _util.SwapLevel(114, 116)
      _util.SwapLevel(18, 20)
      _util.SwapLevel(41, 43)
      _util.SwapLevel(90, 92)
      _util.SetVar("M8_playHerbert1played", 2)
    end
    scriptPlay(L2_2)
  end
end
if L0_0 == 5 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M9_pulledStarter")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("NPC/SpySeek/DockNPC/docksRope", _id.M9_DockNPC)
  else
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("M9_offeredBoatHelp", 0)
    L2_2 = _util
    L2_2 = L2_2.SetConversationCount
    L2_2(0, _id.M9_DockNPC)
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("NPC/SpySeek/DockNPC/DockNPCFix", _id.M9_DockNPC)
  end
end
if L0_0 == 6 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M10_JPGComplete")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M10_RookieComplete")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("M10_trapComplete")
      if L2_2 == 1 then
        L2_2 = _util
        L2_2 = L2_2.GetVar
        L2_2 = L2_2("M10_fakeHerbertDock")
        if L2_2 == 0 then
          L2_2 = _util
          L2_2 = L2_2.SetCursorPos
          L2_2(511, 192)
          function L2_2()
            _util.ClearCom()
            _util.AddItem(_id.M10_Docks_Kluzy)
            _util.ActivateNpc(_id.M10_Docks_Kluzy, 0)
          end
          scriptPlay(L2_2)
        end
      end
    end
  else
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M10_foundRope")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.ChangeBaseAnim
      L2_2("NPC/WaddleSquad/DockNPC/docksNoRope", _id.M10_Docks_RopeNPC)
    else
      L2_2 = _util
      L2_2 = L2_2.ChangeBaseAnim
      L2_2("NPC/WaddleSquad/DockNPC/docksRope", _id.M10_Docks_RopeNPC)
    end
  end
end
if L0_0 == 9 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("balloonchase")
  if L2_2 == 3 then
    L2_2 = _util
    L2_2 = L2_2.SetVar
    L2_2("balloonchase", 4)
    L2_2 = _util
    L2_2 = L2_2.AddItem
    L2_2(_id.DistantHerbDock2)
  end
end
if L0_0 == 10 then
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("CompletedAquaGrabber")
  if L2_2 > 0 then
    L2_2 = _util
    L2_2 = L2_2.SetExitLocked
    L2_2(_id.Doors_Dock2BeachUL, false)
  end
end
