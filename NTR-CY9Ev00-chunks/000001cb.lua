if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  _util.AddInventoryItem(_id.C4_InventoryItem_WhiteBeard)
  _util.DelItem(_util.GetSelf())
end
