if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("FPM12_CoconutsTaken") == 0 then
    _util.IncVar("FPM12_CoconutsTaken")
    _util.AddInventoryItem(_id.Inventory_Coconut_Beach)
    _util.DelItem(_util.GetSelf())
  elseif _util.GetVar("FPM12_CoconutsTaken") == 1 then
    _util.IncVar("FPM12_CoconutsTaken")
    _util.AddInventoryItem(_id.Inventory_Coconut_Town)
    _util.DelItem(_util.GetSelf())
  elseif _util.GetVar("FPM12_CoconutsTaken") == 2 then
    _util.IncVar("FPM12_CoconutsTaken")
    _util.AddInventoryItem(_id.Inventory_Coconut_Forest)
    _util.DelItem(_util.GetSelf())
  elseif _util.GetVar("FPM12_CoconutsTaken") == 3 then
    _util.IncVar("FPM12_CoconutsTaken")
    _util.AddInventoryItem(_id.Inventory_Coconut_SkiHill)
    _util.DelItem(_util.GetSelf())
  end
end
