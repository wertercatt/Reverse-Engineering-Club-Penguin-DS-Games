if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("C4_CanTakeMop") == 0 then
    _util.AddMonologue(_text.C4_PIZZAPARLOR_ITEMS_NEED_PERMISSION)
  else
    _util.AddPlayerThought(_text.C4_MOP)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetVar("C4_CanTakeMop") == 1 then
    if _util.GetSource() == _id.Inventory_ScissorsTool then
      _util.AddInventoryItem(_id.C4_InventoryItem_Wig)
      _util.SetVar("M10_HaveWig", 1)
      _util.ChangeBaseAnim("MissionObjects/M4/mopCut", _id.C4_PizzaParlor_Mop)
      _util.MarkSubObjComplete(_text.C4_OBJ3, _text.C4_3SUBOBJ2)
    elseif _util.GetSource() == _id.Inventory_PuffleKlutzy and _util.GetVar("C4_CanTakeMop") == 1 then
      _util.SetSuccess(_util.GetSelf(), true)
    end
  else
    _util.AddMonologue(_text.C4_PIZZAPARLOR_ITEMS_NEED_PERMISSION)
  end
end
if _util.GetReason() == _const.COLLIDED and _util.GetSource() == _id.Inventory_PuffleKlutzy and _util.GetVar("M10_HaveWig") == 0 then
  _util.SetVar("M10_HaveWig", 1)
  _util.ChangeBaseAnim("MissionObjects/M4/mopCut", _id.C4_PizzaParlor_Mop)
  _util.AddInventoryItem(_id.C4_InventoryItem_Wig)
  _util.MarkSubObjComplete(_text.C4_OBJ3, _text.C4_3SUBOBJ2)
end
