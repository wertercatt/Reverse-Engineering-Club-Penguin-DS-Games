local L0_0, L1_1
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
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.MarkSubObjComplete
  L1_1 = _text
  L1_1 = L1_1.M9_OBJ_1
  L0_0(L1_1, _text.M9_OBJ_1A)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.DISABLED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddPlayerThought
  L1_1 = _text
  L1_1 = L1_1.M9_DISABLED_INVENTORY_TOUCH
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COMBINE
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  if L1_1 == _id.M9_StickA or L1_1 == _id.M9_StickB then
    _util.RemoveInventoryItem(33517)
    _util.RemoveInventoryItem(L1_1)
    _util.AddInventoryItem(37859)
    _util.SetCombinationSuccess(1)
  end
end
