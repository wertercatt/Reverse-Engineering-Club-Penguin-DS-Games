if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.TOUCHED and _util.GetActiveMission() == 2 and not _util.HasInventoryItem(_id.M5_InventoryRope) then
  if _util.GetVar("foundShadow") == 0 then
    _util.AddSubObjective(_text.M5_OBJ5, _text.M5_5SUBOBJ1)
  end
  _util.MarkSubObjComplete(_text.M5_OBJ5, _text.M5_5SUBOBJ1)
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == _id.M8_BeachNet then
  _util.RemoveInventoryItem(_id.M8_BeachNet)
  _util.RemoveInventoryItem(42426)
  _util.AddInventoryItem(42489)
  if _util.GetVar("foundShadow") == 0 then
    _util.AddSubObjective(_text.M5_OBJ5, _text.M5_5SUBOBJ3)
  end
  _util.MarkSubObjComplete(_text.M5_OBJ5, _text.M5_5SUBOBJ3)
  _util.SetCombinationSuccess(1)
  _util.SetSpawn(0, 42426)
end
