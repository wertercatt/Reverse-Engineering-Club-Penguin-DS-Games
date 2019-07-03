if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("GiftShopItems") ~= 4 and _util.GetActiveMission() == 4 then
    _util.AddInventoryItem(_id.M8_BeachNet)
  elseif _util.GetActiveMission() == 2 and _util.GetVar("GotNet") == 0 then
    _util.AddInventoryItem(_id.M8_BeachNet)
    if _util.GetVar("foundShadow") == 0 then
      _util.AddSubObjective(_text.M5_OBJ5, _text.M5_5SUBOBJ2)
    end
    _util.MarkSubObjComplete(_text.M5_OBJ5, _text.M5_5SUBOBJ2)
    _util.SetVar("GotNet", 1)
  end
end
if _util.GetReason() == _const.COMBINE and _util.GetActiveMission() == 2 and _util.GetSource() == _id.M5_InventoryRope then
  _util.RemoveInventoryItem(_id.M8_BeachNet)
  _util.RemoveInventoryItem(_id.M5_InventoryRope)
  _util.AddInventoryItem(42489)
  if _util.GetVar("foundShadow") == 0 then
    _util.AddSubObjective(_text.M5_OBJ5, _text.M5_5SUBOBJ3)
  end
  _util.MarkSubObjComplete(_text.M5_OBJ5, _text.M5_5SUBOBJ3)
  _util.SetCombinationSuccess(1)
  _util.SetSpawn(0, _id.M5_InventoryRope)
end
