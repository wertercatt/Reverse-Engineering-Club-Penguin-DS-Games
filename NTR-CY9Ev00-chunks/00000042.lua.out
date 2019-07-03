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
  function L3_3()
    _util.DisableInput()
    _util.SwitchState("2Open", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.AddInventoryItem(_id.M5_InventoryEmptyCup)
    _util.AddItem(_id.M5_ChocoHole)
    _util.DelItem(_util.GetSelf())
    _util.EnableInput()
  end
  scriptPlay(L3_3)
end
