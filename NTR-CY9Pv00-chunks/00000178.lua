if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.HasMainObjective(_text.M10_OBJ2) and _util.HasMainObjective(_text.M10_OBJ3) and _util.GetVar("foundPanel") == 0 then
    _util.SetVar("foundPanel", 1)
    _util.AddInventoryItem(_id.M10_SolarPanelInv)
    _util.MarkSubObjComplete(_text.M10_OBJ2, _text.M10_2SUBOBJ1, true)
    _util.DelItem(_id.M10_SolarPanel)
    _util.AddItem(_id.M10_EmptyBox)
  else
    _util.AddMonologue(_text.M8_GADGETROOM_ITEM_HELIUM_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
  end
end
