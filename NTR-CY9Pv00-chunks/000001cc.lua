if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == 55841 then
  _util.RemoveInventoryItem(55841)
  _util.RemoveInventoryItem(37859)
  _util.AddInventoryItem(37556)
  _util.MarkSubObjComplete(_text.M9_OBJ_1, _text.M9_OBJ_1A)
  _util.SetCombinationSuccess(1)
end
