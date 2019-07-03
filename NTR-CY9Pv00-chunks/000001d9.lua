local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
communicatorCheck(L0_0, L1_1)
if _util.GetReason() == _const.TOUCHED and _util.HasInventoryItem(_id.M9_DuckReceiver) and _util.GetConversationCount() == 0 then
  _util.AddPlayerThought(_text.M9_ICEBERG_DUCK_DROP1)
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M9_DuckReceiver then
  _util.ActivateNpc(_util.GetSelf(), 0)
end
