if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == 39020 then
  _util.RemoveInventoryItem(39020)
  _util.RemoveInventoryItem(411)
  _util.SetVar("CombinedMapPeices", 1)
  _util.AddInventoryItem(56773)
  _util.SetCombinationSuccess(1)
  _util.SetSpawn(0, 39020)
  _util.SetSpawn(0, 411)
end
