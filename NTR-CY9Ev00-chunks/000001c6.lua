local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "GotStatue"
  L1_1 = L1_1(L2_2)
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L2_2 = "MissionObjects/M4/statue_hang"
    L1_1(L2_2, _id.C4_MineShackFlood_Item_Statue)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.C4_STATUE_HANG
    L1_1(L2_2)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "GotStatue"
    L1_1 = L1_1(L2_2)
    if L1_1 == 2 then
      L1_1 = _util
      L1_1 = L1_1.AddPlayerThought
      L2_2 = _text
      L2_2 = L2_2.C4_STATUE_UNSTABLE
      L1_1(L2_2)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "GotStatue"
      L1_1 = L1_1(L2_2)
      if L1_1 == 3 then
        L1_1 = _util
        L1_1 = L1_1.AddPlayerThought
        L2_2 = _text
        L2_2 = L2_2.C4_STATUE_UNSEALED
        L1_1(L2_2)
      end
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleKlutzy
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("CutDownStatue")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("CutDownStatue", 1)
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleWhite
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
    end
  end
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("GotStatue")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("MissionObjects/M4/statue_hang", _id.C4_MineShackFlood_Item_Statue)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COLLIDED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PuffleKlutzy
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("GotStatue")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("GotStatue", 2)
      function L2_2()
        _util.DisableInput()
        _util.DisablePuffle(_id.Enable_PuffleKlutzy)
        _util.SetPuffle(_id.Inventory_NoPuffle)
        _util.StartCutscene(_const.KLUTZYCUTSROPE)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        repeat
          scriptWait()
        until 0 + 1 >= 30
        _util.ChangeBaseAnim("MissionObjects/M4/statue", _id.C4_MineShackFlood_Item_Statue, "crash")
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        repeat
          scriptWait()
        until 0 + 1 >= 30
        _util.ChangeBaseAnim("MissionObjects/M4/statue", _id.C4_MineShackFlood_Item_Statue)
        _util.EnableInput()
        _util.ClearCom()
        _util.SetupComNpc(_const.COM_HERBERT, _id.C4_MineShackFlood_NPC_Herbert, 2)
        _util.LaunchCommunicator()
      end
      scriptPlay(L2_2)
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleWhite
    if L1_1 == L2_2 then
      L2_2 = _util
      L2_2 = L2_2.GetVar
      L2_2 = L2_2("GotStatue")
      if L2_2 == 3 then
        function L2_2()
          _util.StartMiniGame(_const.WELDING, 1)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
          until _util.GetGameState() == _const.MISSION
          if _util.GetMinigameOutput1() == 1 then
            _util.SetVar("GotStatue", 4)
            _util.ChangeBaseAnim("MissionObjects/M4/statue2_frozen", _id.C4_MineShackFlood_Item_Statue)
            _util.ActivateNpc(_id.C4_MineShackFlood_NPC_JPG, 3)
          end
        end
        scriptPlay(L2_2)
      end
    end
  end
end
