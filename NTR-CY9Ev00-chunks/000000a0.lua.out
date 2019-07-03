local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.ActivateNpc
    L1_1(_id.C4_MineShackFlood_NPC_Gary, 0)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_MS_ROOKIE_3, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Herbert, 1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_MS_ROOKIE_4)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C4_MS_ROOKIE_4A, _const.CHANGE_DIALOG, -1, 3)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C4_MS_ROOKIE_4B, _const.CHANGE_DIALOG, -1, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("MSFloodConversation")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.C4_MS_ROOKIE_5, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Herbert, 2)
    else
      L1_1 = _util
      L1_1 = L1_1.AddNPCText
      L1_1(_text.C4_MS_ROOKIE_5, _const.END_DIALOG, -1, 3)
    end
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_MS_ROOKIE_6, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_JPG, 1)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("GotStatue")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("readyForStatue", 1)
    end
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_MS_ROOKIE_7, _const.END_DIALOG, -1, 5)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_MS_ROOKIE_8)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C4_MS_ROOKIE_8A, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Gary, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_MS_ROOKIE_9, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_JPG, 4)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("geyserDiverted")
    if L1_1 == 0 then
      function L1_1()
        local L0_2
        L0_2 = _util
        L0_2 = L0_2.SetConversationCount
        L0_2(11)
        L0_2 = _util
        L0_2 = L0_2.StartMiniGame
        L0_2(_const.JACKHAMMERIN, 1, 1)
        repeat
          L0_2 = scriptWait
          L0_2()
          L0_2 = _util
          L0_2 = L0_2.GetGameState
          L0_2 = L0_2()
        until L0_2 ~= _const.MISSION
        repeat
          L0_2 = scriptWait
          L0_2()
          L0_2 = _util
          L0_2 = L0_2.GetGameState
          L0_2 = L0_2()
        until L0_2 == _const.MISSION
        L0_2 = _util
        L0_2 = L0_2.GetMinigameOutput1
        L0_2 = L0_2()
        if L0_2 == 1 then
          L0_2 = _util
          L0_2 = L0_2.SetVar
          L0_2("geyserDiverted", 1)
          function L0_2()
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
            _util.ActivateNpc(_id.C4_MineShackFlood_NPC_Gary, 10)
          end
          scriptPlay(L0_2)
        else
          L0_2 = _util
          L0_2 = L0_2.ActivateNpc
          L0_2(_id.C4_MineShackFlood_NPC_Rookie, 20)
          L0_2 = _util
          L0_2 = L0_2.SetConversationCount
          L0_2(6, _id.C4_MineShackFlood_NPC_Dot)
          L0_2 = _util
          L0_2 = L0_2.SetConversationCount
          L0_2(20, _id.C4_MineShackFlood_NPC_Gary)
          L0_2 = _util
          L0_2 = L0_2.SetConversationCount
          L0_2(10, _id.C4_MineShackFlood_NPC_JPG)
        end
      end
      scriptPlay(L1_1)
    end
  elseif L0_0 == 11 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_MS_ROOKIE_9, _const.END_DIALOG, -1, 11)
  elseif L0_0 == 20 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_GEYSER_DO_OVER_ROOKIE1, _const.CHANGE_DIALOG, -1, 21)
  elseif L0_0 == 21 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_GEYSER_DO_OVER_ROOKIE2, _const.END_DIALOG, -1, 21)
  elseif L0_0 == 22 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C4_MS_ROOKIE_6, _const.END_DIALOG, -1, 22)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.AFTER_DIALOG then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("readyForStatue")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("readyForStatue", 2)
    L1_1 = _util
    L1_1 = L1_1.ClearCom
    L1_1()
    L1_1 = _util
    L1_1 = L1_1.SetupComNpc
    L1_1(_const.COM_HERBERT, _id.C4_MineShackFlood_NPC_Herbert, 0)
    L1_1 = _util
    L1_1 = L1_1.LaunchCommunicator
    L1_1()
  end
end
