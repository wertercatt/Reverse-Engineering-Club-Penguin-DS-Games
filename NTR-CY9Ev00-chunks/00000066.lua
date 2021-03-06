if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.DISABLED then
  _util.AddPlayerThought(_text.M9_DISABLED_INVENTORY_TOUCH)
end
if _util.GetReason() == _const.TOUCHED then
  _util.MarkSubObjComplete(_text.M9_OBJ_3, _text.M9_OBJ_3AA)
end
if _util.GetReason() == _const.COMBINE then
  if _util.GetSource() == 39220 or _util.GetSource() == 33699 then
    _util.RemoveInventoryItem(39220)
    _util.RemoveInventoryItem(33699)
    _util.MarkSubObjComplete(_text.M9_OBJ_3, _text.M9_OBJ_3A)
    _util.AddInventoryItem(33415)
    _util.SetCombinationSuccess(1)
  elseif _util.GetSource() == 32650 then
    _util.SetCombinationSuccess(0, _text.M9_DUCK_NEEDS_GUM)
  elseif _util.GetSource() == _id.M9_Receiver1 or _util.GetSource() == _id.M9_Receiver2 or _util.GetSource() == _id.M9_Receiver3 then
    _util.SetCombinationSuccess(0, _text.M9_DUCK_NOTFILLED_BEFORE_TRANS)
  end
end
