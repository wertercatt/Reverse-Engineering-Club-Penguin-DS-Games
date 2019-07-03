if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("trapDropped") == 1 then
    _util.AddPlayerThought(_text.M5_FISHINGHOLE_TREETRAP_TOUCH)
  else
    _util.AddPlayerThought(_text.M5_TRAPTREE_TOUCH)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M8_BeachNet then
    _util.AddPlayerThought(_text.M5_FISHINGHOLE_TREENET_TOUCH)
  elseif _util.GetSource() == _id.M5_InventoryRope then
    _util.AddPlayerThought(_text.M5_FISHINGHOLE_TREEROPE_TOUCH)
  elseif _util.GetSource() == _id.M5_InventoryTrap then
    _util.SetVar("trapDropped", 1)
    _util.AddItem(_id.M5_KlutzyTrapped)
    _util.AddItem(_id.M5_Trap1)
    _util.AddItem(_id.M5_Trap2)
    _util.RemoveInventoryItem(_id.M5_InventoryTrap)
    _util.AddPlayerThought(_text.M5_FISHINGHOLE_ITEM_TRAPDROP)
    _util.ClearObjective()
  elseif _util.GetSource() == _id.M5_Candle and _util.GetVar("trapDropped") == 1 then
    _util.RemoveInventoryItem(_id.M5_Candle)
    _util.MarkObjComplete(_text.M5_OBJ5)
    _util.ActivateNpc(_id.M5_Shadow, 3)
    _util.DelItem(_util.GetSelf())
  end
end
