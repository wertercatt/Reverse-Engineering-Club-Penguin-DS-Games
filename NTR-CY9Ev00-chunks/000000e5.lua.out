if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and (_util.GetSource() == 33326 or _util.GetSource() == 33625 or _util.GetSource() == 33630) then
  if _util.GetSource() == 33326 then
    _util.RemoveInventoryItem(33326)
  elseif _util.GetSource() == 33625 then
    _util.RemoveInventoryItem(33625)
  elseif _util.GetSource() == 33630 then
    _util.RemoveInventoryItem(33630)
  end
  _util.RemoveInventoryItem(37556)
  _util.AddInventoryItem(37720)
  _util.SetCombinationSuccess(1)
end
