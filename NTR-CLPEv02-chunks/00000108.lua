local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "M3C3_Found_PinkShoes"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.SetVar
    L1_1 = "M3C3_Found_PinkShoes"
    L2_2 = 1
    L0_0(L1_1, L2_2)
    L0_0 = _id
    L0_0 = L0_0.SuitCase_PinkShoes
    L1_1 = 671
    L2_2 = "UI/Zoom/PinkShoes"
    awardClothingItem(L0_0, L1_1, L2_2)
  end
end
