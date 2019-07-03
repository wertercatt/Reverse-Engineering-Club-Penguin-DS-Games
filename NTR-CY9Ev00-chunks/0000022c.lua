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
  L2_2 = "geyserDiverted"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.C4_GEYSER
    L1_1(L2_2)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "geyserDiverted"
    L1_1 = L1_1(L2_2)
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddPlayerThought
      L2_2 = _text
      L2_2 = L2_2.C4_GEYSER_WEAK
      L1_1(L2_2)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "geyserDiverted"
      L1_1 = L1_1(L2_2)
      if L1_1 == 2 then
        L1_1 = _util
        L1_1 = L1_1.AddPlayerThought
        L2_2 = _text
        L2_2 = L2_2.C4_GEYSER_TEMP
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
  L2_2 = L2_2.Inventory_PuffleWhite
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("geyserDiverted")
    if L2_2 == 1 then
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
      L2_2 = _util
      L2_2 = L2_2.DisableInput
      L2_2()
    end
  end
  L2_2 = _id
  L2_2 = L2_2.C4_JackHammer
  if L1_1 == L2_2 then
    function L2_2()
      local L0_3
      L0_3 = _util
      L0_3 = L0_3.StartMiniGame
      L0_3(_const.JACKHAMMERIN, 1, 1)
      repeat
        L0_3 = scriptWait
        L0_3()
        L0_3 = _util
        L0_3 = L0_3.GetGameState
        L0_3 = L0_3()
      until L0_3 ~= _const.MISSION
      repeat
        L0_3 = scriptWait
        L0_3()
        L0_3 = _util
        L0_3 = L0_3.GetGameState
        L0_3 = L0_3()
      until L0_3 == _const.MISSION
      L0_3 = _util
      L0_3 = L0_3.GetMinigameOutput1
      L0_3 = L0_3()
      if L0_3 == 1 then
        L0_3 = _util
        L0_3 = L0_3.SetVar
        L0_3("geyserDiverted", 1)
        function L0_3()
          _util.DisableInput()
          _util.SetCursorPos(376, 112)
          _util.ChangeBaseAnim("MissionObjects/M4/geyser", _id.C4_MineShackFlood_Item_Geyser, "lower")
          repeat
            scriptWait()
          until not _util.IsAnimPlaying(_util.GetSelf())
          _util.ChangeBaseAnim("MissionObjects/M4/geyser_low", _id.C4_MineShackFlood_Item_Geyser)
          repeat
            scriptWait()
          until 0 + 1 > 40
          _util.EnableInput()
          _util.SetConversationCount(7, _id.C4_MineShackFlood_NPC_Dot)
          _util.SetConversationCount(22, _id.C4_MineShackFlood_NPC_Rookie)
          _util.SetConversationCount(11, _id.C4_MineShackFlood_NPC_JPG)
          _util.ActivateNpc(_id.C4_MineShackFlood_NPC_Gary, 10)
        end
        scriptPlay(L0_3)
      else
        L0_3 = _util
        L0_3 = L0_3.ActivateNpc
        L0_3(_id.C4_MineShackFlood_NPC_Rookie, 20)
        L0_3 = _util
        L0_3 = L0_3.SetConversationCount
        L0_3(6, _id.C4_MineShackFlood_NPC_Dot)
        L0_3 = _util
        L0_3 = L0_3.SetConversationCount
        L0_3(20, _id.C4_MineShackFlood_NPC_Gary)
        L0_3 = _util
        L0_3 = L0_3.SetConversationCount
        L0_3(10, _id.C4_MineShackFlood_NPC_JPG)
      end
    end
    if 2 <= _util.GetVar("BalloonRepaired") and _util.GetVar("geyserDiverted") == 0 then
      scriptPlay(L2_2)
    end
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
  L2_2 = L2_2.Inventory_PuffleWhite
  if L1_1 == L2_2 then
    function L2_2()
      _util.ChangeBaseAnim("MissionObjects/M4/geyser", _id.C4_MineShackFlood_Item_Geyser, "freeze")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("MissionObjects/M4/geyser", _id.C4_MineShackFlood_Item_Geyser, "frozen")
      repeat
        scriptWait()
      until 0 + 1 > 40
      _util.ChangeBaseAnim("MissionObjects/M4/geyser", _id.C4_MineShackFlood_Item_Geyser, "break")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.ChangeBaseAnim("MissionObjects/M4/geyser", _id.C4_MineShackFlood_Item_Geyser, "low")
      _util.EnableInput(true)
      _util.StartCutscene(_const.FILLGEYSER)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.ChangeBaseAnim("MissionObjects/M4/geyser_objects", _id.C4_MineShackFlood_Item_Geyser)
      _util.SetVar("geyserDiverted", 2)
      _util.ActivateNpc(_id.C4_MineShackFlood_NPC_Dot, 3)
    end
    scriptPlay(L2_2)
  end
end
