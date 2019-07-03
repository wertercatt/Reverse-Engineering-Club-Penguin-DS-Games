if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == 42426 then
  _util.RemoveInventoryItem(42021)
  _util.RemoveInventoryItem(42426)
  _util.AddInventoryItem(42489)
  _util.SetCombinationSuccess(1)
  _util.SetSpawn(0, 42021)
  _util.SetSpawn(0, 42426)
end
