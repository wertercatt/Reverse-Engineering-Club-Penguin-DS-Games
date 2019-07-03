local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.COMBINE)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.MarkSubObjComplete
  L0_0(_text.M9_OBJ_1, _text.M9_OBJ_1B)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.COMBINE then
  L0_0 = _util
  L0_0 = L0_0.GetSelf
  L0_0 = L0_0()
  if _util.GetSource() == 33517 then
    _util.RemoveInventoryItem(33517)
    _util.RemoveInventoryItem(L0_0)
    _util.AddInventoryItem(37859)
    _util.SetCombinationSuccess(1)
  end
end
