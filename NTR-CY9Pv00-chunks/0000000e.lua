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
  L3_3 = L3_3.AddPlayerThought
  L4_4 = _text
  L4_4 = L4_4.C3_TM_CLIFF
  L3_3(L4_4)
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
  L4_4 = _id
  L4_4 = L4_4.C3_CR_Grappling
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("C3_gotYellow")
    if L4_4 == 1 then
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L4_4 = L4_4("ClimbTMBase")
      if L4_4 == 0 then
        function L4_4()
          _util.StartMiniGame(_const.GRAPPLINGHOOK, 1)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
            if _util.GetMinigameOutput1() == 1 and false == false then
              _util.SetVar("ClimbTMBase", 1)
              _util.ChangeRoom(110)
            end
          until _util.GetGameState() == _const.MISSION
        end
        scriptPlay(L4_4)
      else
        L4_4 = _util
        L4_4 = L4_4.ChangeRoom
        L4_4(110)
      end
    end
  else
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("C3_gotYellow")
    if L4_4 == 0 then
      L4_4 = _util
      L4_4 = L4_4.AddPlayerThought
      L4_4(_text.C3_MTNBASE_NOYELLOW)
    end
  end
end
