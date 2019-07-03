if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.DISABLED then
  _util.AddPlayerThought(_text.M9_DISABLED_INVENTORY_TOUCH)
end
if _util.GetReason() == _const.COMBINE then
  if _util.GetSource() == 33693 then
    if _util.GetSelf() == 33326 then
      _util.RemoveInventoryItem(33326)
    elseif _util.GetSelf() == 33625 then
      _util.RemoveInventoryItem(33625)
    elseif _util.GetSelf() == 33630 then
      _util.RemoveInventoryItem(33630)
    end
    _util.RemoveInventoryItem(33693)
    _util.AddInventoryItem(33627)
    _util.SetCombinationSuccess(1)
  elseif _util.GetSource() == 37556 then
    if _util.GetSelf() == 33326 then
      _util.RemoveInventoryItem(33326)
    elseif _util.GetSelf() == 33625 then
      _util.RemoveInventoryItem(33625)
    elseif _util.GetSelf() == 33630 then
      _util.RemoveInventoryItem(33630)
    end
    _util.RemoveInventoryItem(37556)
    _util.AddInventoryItem(37720)
    _util.SetCombinationSuccess(1)
  elseif _util.GetSource() == _id.M9_DuckDeflated or _util.GetSource() == _id.M9_DuckPatched then
    _util.SetCombinationSuccess(0, _text.M9_DUCK_NOTFILLED_BEFORE_TRANS)
  end
end
