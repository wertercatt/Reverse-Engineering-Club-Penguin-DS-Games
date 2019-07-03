local L0_0, L1_1, L2_2, L3_3, L4_4
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
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "Exit2TALLESTMTTTop"
  L3_3 = L3_3(L4_4)
  if L3_3 == 1 then
    L3_3 = _util
    L3_3 = L3_3.ChangeRoom
    L4_4 = 109
    L3_3(L4_4)
  else
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L4_4 = _text
    L4_4 = L4_4.C3_TM_CLIFF
    L3_3(L4_4)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _util
  L4_4 = L4_4.GetVar
  L4_4 = L4_4("SavedDot")
  if L4_4 == 1 then
    L4_4 = _id
    L4_4 = L4_4.C3_CR_Grappling
    if L3_3 == L4_4 then
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("SavedJPG")
      if L4_4 == 1 then
        function L4_4()
          _util.StartMiniGame(_const.GRAPPLINGHOOK, 2)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
            if _util.GetMinigameOutput1() == 1 and false == false then
              _util.SetVar("Exit2TALLESTMTTTop", 1)
              _util.SetNextRoom(109)
              _util.AddObjective(_text.C3_OBJ7)
            end
          until _util.GetGameState() == _const.MISSION
        end
        scriptPlay(L4_4)
      end
    else
      L4_4 = _id
      L4_4 = L4_4.C3_CR_Grappling
      if L3_3 == L4_4 then
        L4_4 = _util
        L4_4 = L4_4.GetVar
        L4_4 = L4_4("SavedJPG")
        if L4_4 == 0 then
          L4_4 = _util
          L4_4 = L4_4.AddPlayerThought
          L4_4(_text.C3_TALLESTMT_NEEDJPG)
        end
      end
    end
  else
    L4_4 = _util
    L4_4 = L4_4.AddPlayerThought
    L4_4(_text.C3_TM_JPG_TUNNEL)
  end
end
