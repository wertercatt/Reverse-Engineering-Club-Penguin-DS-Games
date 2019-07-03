if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == 33699 then
  _util.RemoveInventoryItem(39220)
  _util.RemoveInventoryItem(33699)
  _util.AddInventoryItem(33415)
  _util.SetCombinationSuccess(1)
end
