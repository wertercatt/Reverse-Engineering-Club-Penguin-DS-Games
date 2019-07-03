local L0_0, L1_1, L2_2, L3_3
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
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L3_3 = L3_3("Exit2TALLESTMT2")
  if L3_3 == 1 then
    L3_3 = _util
    L3_3 = L3_3.ChangeRoom
    L3_3(111)
  else
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("SavedRookie")
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("RescuedPufflesInCage")
      if L3_3 == 1 then
        function L3_3()
          _util.StartMiniGame(_const.LABYRINTH, 7)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
            if _util.GetMinigameOutput1() == 1 and false == false then
              _util.SetVar("Exit2TALLESTMT2", 1)
              _util.SetNextRoom(111)
            end
          until _util.GetGameState() == _const.MISSION
        end
        scriptPlay(L3_3)
      end
    else
      L3_3 = _util
      L3_3 = L3_3.AddPlayerThought
      L3_3(_text.C3_TM_JPG_TUNNEL)
    end
  end
end
