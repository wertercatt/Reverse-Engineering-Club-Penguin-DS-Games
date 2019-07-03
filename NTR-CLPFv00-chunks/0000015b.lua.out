if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("emptyBalloons") == 0 then
    _util.AddMonologue(1149, "DialogStrings", _const.CHANGE_DIALOG, 1)
    _util.SetVar("emptyBalloons", 1)
    if _util.GetSelf() == _id.M2C3_Balloon1Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon1)
      _util.DelItem(_util.GetSelf())
    elseif _util.GetSelf() == _id.M2C3_Balloon2Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon2)
      _util.DelItem(_util.GetSelf())
    elseif _util.GetSelf() == _id.M2C3_Balloon3Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon3)
      _util.DelItem(_util.GetSelf())
    end
  elseif _util.GetVar("emptyBalloons") == 1 then
    _util.AddMonologue(1150)
    _util.SetVar("emptyBalloons", 2)
    if _util.GetSelf() == _id.M2C3_Balloon1Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon1)
      _util.DelItem(_util.GetSelf())
    elseif _util.GetSelf() == _id.M2C3_Balloon2Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon2)
      _util.DelItem(_util.GetSelf())
    elseif _util.GetSelf() == _id.M2C3_Balloon3Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon3)
      _util.DelItem(_util.GetSelf())
    end
  elseif _util.GetVar("emptyBalloons") == 2 then
    _util.AddMonologue(1151)
    _util.SetVar("emptyBalloons", 3)
    if _util.GetSelf() == _id.M2C3_Balloon1Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon1)
      _util.DelItem(_util.GetSelf())
    elseif _util.GetSelf() == _id.M2C3_Balloon2Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon2)
      _util.DelItem(_util.GetSelf())
    elseif _util.GetSelf() == _id.M2C3_Balloon3Fake then
      _util.AddInventoryItem(_id.Inventory_Balloon3)
      _util.DelItem(_util.GetSelf())
    end
  end
end
