if _util.GetReason() == _const.TOUCHED then
  _util.SetVar("M3C3_GotOil", 1)
  _util.SetVar("M3C3_FoundClues", 1)
  _util.AddInventoryItem(_id.Inventory_OilCan)
  _util.DelItem(_util.GetSelf())
end
