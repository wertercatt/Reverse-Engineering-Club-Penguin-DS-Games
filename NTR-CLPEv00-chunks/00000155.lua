local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetVar
  L1_1 = "M4C1_Found_FairyWings"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.SetVar
    L1_1 = "M4C1_Found_FairyWings"
    L2_2 = 1
    L0_0(L1_1, L2_2)
    L0_0 = _id
    L0_0 = L0_0.SuitCase_FairyWings
    L1_1 = 824
    L2_2 = "UI/Zoom/FairyWings"
    awardClothingItem(L0_0, L1_1, L2_2)
  end
end
