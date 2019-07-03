if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
  _util.AddInterest(_const.COLLIDED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M5_Gary_FurConversationStarted") > 0 then
    _util.HideMap()
    _util.ChangeRoom(33)
  else
    _util.ActivateNpc(_id.M5_Gary_Gadget)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M5_DirtyFur then
    _util.HideMap()
    _util.ChangeRoom(33)
  elseif _util.GetSource() == _id.M5_CleanFur and _util.GetVar("M5_toldGaryFoundFur") == 1 then
    _util.HideMap()
    _util.ChangeRoom(33)
  elseif _util.GetSource() == _id.M5_CleanFur and _util.GetVar("M5_toldGaryFoundFur") == 0 then
    _util.AddPlayerThought(_text.M5_GADGETROOM_ANALYZER_TOUCH)
  end
end
