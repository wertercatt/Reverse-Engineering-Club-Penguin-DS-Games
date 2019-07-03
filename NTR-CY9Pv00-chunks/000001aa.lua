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
  L1_1 = L1_1.COMBINE
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
    _util.SetVar("gumTaken", 1)
    _util.DelItem(_id.M9_Gum)
    _util.SetSpawn(0, _id.M9_Gum)
    _util.ActivateNpc(_id.M9_PlazaPuffelsTalk, 23)
  end
  scriptPlay(L3_3)
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.COMBINE then
  L3_3 = _util
  L3_3 = L3_3.GetSelf
  L3_3 = L3_3()
  if _util.GetSource() == 33699 then
    _util.RemoveInventoryItem(39220)
    _util.RemoveInventoryItem(33699)
    _util.MarkSubObjComplete(_text.M9_OBJ_3, _text.M9_OBJ_3A)
    _util.AddInventoryItem(33415)
    _util.SetCombinationSuccess(1)
  end
end
