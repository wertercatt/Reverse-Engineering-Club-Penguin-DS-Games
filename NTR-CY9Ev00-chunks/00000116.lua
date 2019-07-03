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
  L3_3 = L3_3.AddMonologue
  L4_4 = _text
  L4_4 = L4_4.C1_TRAINING_CLIFF
  L3_3(L4_4, "DialogStrings", _const.END_DIALOG, 0)
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
  L4_4 = L4_4.C1_GrapplingHook
  if L3_3 == L4_4 then
    function L4_4()
      _util.StartMiniGame(_const.GRAPPLINGHOOK, 7)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
        if _util.GetMinigameOutput1() == 1 and false == false then
          _util.SetNextRoom(117)
        end
      until _util.GetGameState() == _const.MISSION
      if _util.GetMinigameOutput1() == 1 then
        _util.DelItem(_id.M1_HangingTarget01)
        _util.DelItem(_id.M1_Target01)
        _util.DelItem(_id.M1_Target02)
        _util.DelItem(_id.C1_TargetLight1)
        _util.DelItem(_id.C1_TargetLight2)
        _util.DelItem(_id.C1_TargetLight3)
        _util.RemoveInventoryItem(_id.C1_GrapplingHook)
      end
    end
    scriptPlay(L4_4)
  end
end
