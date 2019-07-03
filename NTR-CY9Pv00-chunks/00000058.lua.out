local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetVar
L2_2 = L2_2("c2_confrontedHerbert")
if L2_2 ~= 0 then
  L2_2 = _util
  L2_2 = L2_2.AddItem
  L2_2(_id.C2_ShiningLight)
  L2_2 = _util
  L2_2 = L2_2.AddItem
  L2_2(_id.C2_TwinklingLight)
  L2_2 = _util
  L2_2 = L2_2.SetExitLocked
  L2_2(_id.Doors_C2_HerbsDoor2Den, true)
  L2_2 = _util
  L2_2 = L2_2.SetExitLocked
  L2_2(_id.Doors_C2_HerbsDoor2Storage, true)
  function L2_2()
    if _util.GetVar("C2_CommEnd") == 0 then
      _util.DisableInput()
      _util.SetSpawn(1, _id.C2_HBWorkshop_Herb)
      repeat
        scriptWait()
      until 0 + 1 > 40
      _util.EnableInput(true)
      _util.ChangeRoom(55)
      _util.SetVar("C2_CommEnd", 1)
    elseif _util.GetVar("C2_CommEnd") == 1 then
      _util.DisableInput()
      _util.SetCursorPos(_util.GetX(_id.C2_BlastDoor), _util.GetY(_id.C2_BlastDoor))
      _util.AddItem(_id.C2_BlastDoor)
      _util.ChangeBaseAnim("MissionObjects/M2/blastDoor", _id.C2_BlastDoor, "close")
      _util.PlaySFX(79)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_BlastDoor)
      _util.ChangeBaseAnim("MissionObjects/M2/blastDoor", _id.C2_BlastDoor)
      _util.PlaySFX(223)
      _util.AddItem(_id.C2_HBLobby_Siren1)
      _util.AddItem(_id.C2_HBLobby_Siren2)
      _util.AddItem(_id.C2_HBLobby_Siren3)
      _util.ChangeBaseAnim("MissionObjects/M2/Siren", _id.C2_HBLobby_Siren1, "down")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_HBLobby_Siren1)
      _util.ChangeBaseAnim("MissionObjects/M2/Siren", _id.C2_HBLobby_Siren1)
      _util.ChangeBaseAnim("MissionObjects/M2/Siren", _id.C2_HBLobby_Siren2)
      _util.ChangeBaseAnim("MissionObjects/M2/Siren", _id.C2_HBLobby_Siren3)
      _util.SetVar("C2_CommEnd", 2)
      _util.ClearCom()
      _util.SetupComNpc(_const.COM_JPG, _id.C2_Wilderness_JPG, 3)
      _util.LaunchCommunicator()
      _util.EnableInput(true)
    end
  end
  scriptPlay(L2_2)
end
L2_2 = _util
L2_2 = L2_2.GetVar
L2_2 = L2_2("C2_EnterBase")
if L2_2 == 0 then
  L2_2 = _util
  L2_2 = L2_2.SetVar
  L2_2("C2_EnterBase", 1)
  L2_2 = _util
  L2_2 = L2_2.ClearCom
  L2_2()
  L2_2 = _util
  L2_2 = L2_2.SetupComNpc
  L2_2(_const.COM_ROOKIE, _id.C2_CR_Rookie, 0)
  L2_2 = _util
  L2_2 = L2_2.LaunchCommunicator
  L2_2()
  L2_2 = _util
  L2_2 = L2_2.DisablePuffle
  L2_2(_id.Enable_PuffleBlue)
  L2_2 = _util
  L2_2 = L2_2.DisablePuffle
  L2_2(_id.Enable_PuffleRed)
  L2_2 = _util
  L2_2 = L2_2.DisablePuffle
  L2_2(_id.Enable_PuffleBlack)
  L2_2 = _util
  L2_2 = L2_2.DisablePuffle
  L2_2(_id.Enable_PufflePurple)
  L2_2 = _util
  L2_2 = L2_2.DisablePuffle
  L2_2(_id.Enable_PufflePink)
  L2_2 = _util
  L2_2 = L2_2.DisablePuffle
  L2_2(_id.Enable_PuffleGreen)
  L2_2 = _util
  L2_2 = L2_2.DisablePuffle
  L2_2(_id.Enable_PuffleYellow)
  L2_2 = _util
  L2_2 = L2_2.DisablePuffle
  L2_2(_id.Enable_PuffleWhite)
  L2_2 = _util
  L2_2 = L2_2.SetPuffle
  L2_2(_id.Inventory_NoPuffle)
end
L2_2 = _util
L2_2 = L2_2.GetVar
L2_2 = L2_2("C2_PanelOpen")
if L2_2 == 2 then
  L2_2 = _util
  L2_2 = L2_2.ChangeBaseAnim
  L2_2("MissionObjects/M2/herbertPanelCut", _id.C2_HBLobby_Panel)
else
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("C2_PanelOpen")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("MissionObjects/M2/herbertPanelOpen", _id.C2_HBLobby_Panel)
  end
end
