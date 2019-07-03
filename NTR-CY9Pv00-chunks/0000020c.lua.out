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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
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
  L3_3 = L3_3("C2_CommEnd")
  if L3_3 == 2 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L3_3 = L3_3("UnlockSkyLight")
    if L3_3 == 1 then
      function L3_3()
        _util.StartMiniGame(_const.GRAPPLINGHOOK, 0)
        repeat
          scriptWait()
        until _util.GetGameState() ~= _const.MISSION
        repeat
          scriptWait()
          if _util.GetMinigameOutput1() == 1 then
            _util.SetNextRoom(128)
            _util.SetVar("C2_Event", _id.C2_EscapedHerbBase)
            _util.SetVar("C2_DisableSuitcase", 0)
            _util.SetSpawn(1, _id.C2_CR_JPG)
            _util.SetSpawn(1, _id.C2_CR_Rookie)
            _util.SetSpawn(1, _id.C2_CR_Director)
            _util.SetSpawn(1, _id.C2_WildernessBerry_JPG)
            _util.SetSpawn(1, _id.C2_WildernessBerry_Hole)
          end
        until _util.GetGameState() == _const.MISSION
      end
      scriptPlay(L3_3)
    else
      L3_3 = _util
      L3_3 = L3_3.GetVar
      L3_3 = L3_3("UnlockSkyLight")
      if L3_3 == 0 then
        L3_3 = _util
        L3_3 = L3_3.ChangeRoom
        L3_3(103)
      end
    end
  else
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L3_3(_text.M11_SKYLIGHT_TOUCH)
  end
end
