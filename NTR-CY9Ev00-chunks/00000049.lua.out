local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L2_2 = spypodCheck
L3_3 = L0_0
L4_4 = L1_1
L2_2(L3_3, L4_4)
L2_2 = mapCheck
L3_3 = L0_0
L4_4 = L1_1
L2_2(L3_3, L4_4)
L2_2 = communicatorCheck
L3_3 = L0_0
L4_4 = L1_1
L2_2(L3_3, L4_4)
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
function L3_3()
  if _util.GetVar("doneMaze") == 0 and _util.GetMinigameOutput1() == 1 then
    _util.SetNextRoom(57)
    _util.SetVar("doneMaze", 1)
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.TOUCHED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.GetVar
  L5_5 = "M9_HerbertFound"
  L4_4 = L4_4(L5_5)
  if L4_4 == 1 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L5_5 = "doneMaze"
    L4_4 = L4_4(L5_5)
    if L4_4 == 1 then
      L4_4 = _util
      L4_4 = L4_4.ChangeRoom
      L5_5 = 57
      L4_4(L5_5)
    else
      L4_4 = _util
      L4_4 = L4_4.GetVar
      L5_5 = "doneMaze"
      L4_4 = L4_4(L5_5)
      if L4_4 == 0 then
        function L4_4()
          _util.StartMiniGame(_const.LABYRINTH, 8)
          repeat
            scriptWait()
          until _util.GetGameState() ~= _const.MISSION
          repeat
            scriptWait()
            _UPVALUE0_()
          until _util.GetGameState() == _const.MISSION
        end
        L5_5 = scriptPlay
        L5_5(L4_4)
      end
    end
  else
    L4_4 = _util
    L4_4 = L4_4.AddPlayerThought
    L5_5 = _text
    L5_5 = L5_5.M9_FISHING_DOOR2HERBCAMP
    L4_4(L5_5)
  end
end
L4_4 = _util
L4_4 = L4_4.GetReason
L4_4 = L4_4()
L5_5 = _const
L5_5 = L5_5.ITEM_DROPPED
if L4_4 == L5_5 then
  L4_4 = _util
  L4_4 = L4_4.GetSource
  L4_4 = L4_4()
  L5_5 = _id
  L5_5 = L5_5.M9_SpyCamera
  if L4_4 == L5_5 then
    L5_5 = _util
    L5_5 = L5_5.GetVar
    L5_5 = L5_5("M9_HerbertFound")
    if L5_5 == 0 then
      function L5_5()
        _util.SetVar("M9_HerbertFound", 1)
        _util.StartCutscene(_const.HERBSCAMP)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
        until _util.GetGameState() == _const.MISSION
        _util.SetupComNpc(_const.COM_GARY, _id.M9_GaryMapHQ, 0)
        _util.LaunchCommunicator()
      end
      scriptPlay(L5_5)
    end
  end
end
