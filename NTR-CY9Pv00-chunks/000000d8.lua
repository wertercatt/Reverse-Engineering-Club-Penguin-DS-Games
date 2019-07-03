if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("C4_CanTakePizzaPan") == 0 then
    _util.AddMonologue(_text.C4_PIZZAPARLOR_ITEMS_NEED_PERMISSION)
  else
    _util.AddInventoryItem(_id.C4_InventoryItem_SenseiHat)
    _util.SetVar("M10_HaveHat", 1)
    _util.MarkSubObjComplete(_text.C4_OBJ3, _text.C4_3SUBOBJ1)
    _util.DelItem(_util.GetSelf())
  end
end
