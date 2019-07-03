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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(4055)
  elseif L0_0 == 10 then
    L1_1 = _util
    L1_1 = L1_1.SetConversationCount
    L1_1(0)
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM07_messagesDecoded")
    if L1_1 ~= 4 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(4057, "DialogStrings", _const.CHANGE_NPC, _id.FPM07_ForestNPC, 0)
    else
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(4057, "DialogStrings", _const.CHANGE_NPC, _id.FPM07_ForestNPC, 20)
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("FPMission_Started")
  if L1_1 == 7 then
    L1_1 = _id
    L1_1 = L1_1.Inventory_DecoderSpypod
    if L0_0 == L1_1 then
      function L1_1()
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.SetCursorPos(410, 110)
        if _util.GetMinigameOutput1() == 1 then
          if _util.GetVar("FPM07_decodedForestMessage") == 0 then
            _util.SetVar("FPM07_decodedForestMessage", 1)
            _util.IncVar("FPM07_messagesDecoded")
          end
          _util.ActivateNpc(_id.FPM07_CodeForest, 10)
        end
      end
      _util.StartMiniGame(_const.DECODER, 4056)
      scriptPlay(L1_1)
    end
  end
end
