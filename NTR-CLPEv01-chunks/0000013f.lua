local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.SuitCase_IceSkates
  L2_2 = _util
  L2_2 = L2_2.IsSuitcaseItemEnabled
  L2_2 = L2_2(L1_1)
  if L2_2 == true then
    L2_2 = _util
    L2_2 = L2_2.SetSpawn
    L2_2(0, L0_0)
    L2_2 = _util
    L2_2 = L2_2.DelItem
    L2_2(L0_0)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _id
  L0_0 = L0_0.SuitCase_IceSkates
  L1_1 = 676
  L2_2 = "UI/Zoom/IceSkates"
  awardClothingItem(L0_0, L1_1, L2_2)
end
