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
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "HaveMarbles"
  L3_3 = L3_3(L4_4)
  if L3_3 == 0 then
    L3_3 = _util
    L3_3 = L3_3.AddInventoryItem
    L4_4 = _id
    L4_4 = L4_4.M11_Marbles2
    L3_3(L4_4)
    L3_3 = _util
    L3_3 = L3_3.DelItem
    L4_4 = _util
    L4_4 = L4_4.GetSelf
    L4_4 = L4_4()
    L3_3(L4_4, L4_4())
    L3_3 = _util
    L3_3 = L3_3.SetVar
    L4_4 = "HaveMarbles"
    L3_3(L4_4, 1)
  else
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L4_4 = _text
    L4_4 = L4_4.M11_MARBLES
    L3_3(L4_4)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.COMBINE
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSelf
  L3_3 = L3_3()
  L4_4 = _util
  L4_4 = L4_4.GetSource
  L4_4 = L4_4()
  if L4_4 == _id.M11_MancalaBoard then
    _util.RemoveInventoryItem(L3_3)
    _util.RemoveInventoryItem(L4_4)
    _util.AddInventoryItem(_id.M11_MancalawMarb)
    _util.SetCombinationSuccess(1)
  end
end
