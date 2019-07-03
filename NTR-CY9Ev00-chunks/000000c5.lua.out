if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("C4_fixingBalloon") == 0 then
    _util.AddPlayerThought(_text.C4_SKIVILLAGE_HBALLOON)
  else
    _util.AddPlayerThought(_text.C4_SKIVILLAGE_HBALLOON_TAPE_NEW)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.C4_InventoryItem_Tape then
    _util.SetVar("C4_fixingBalloon", 1)
    _util.ChangeBaseAnim("MissionObjects/M4/balloonFixed", _id.C4_HerbsBalloon)
    _util.RemoveInventoryItem(_id.C4_InventoryItem_Tape)
    _util.AddPlayerThought(_text.C4_SKIVILLAGE_HBALLOON_TAPE_NEW)
  elseif _util.GetSource() == _id.C4_InventoryItem_SuperHelium and _util.GetVar("C4_fixingBalloon") == 1 then
    _util.AddPlayerThought(_text.C4_SKIVILLAGE_HBALLOON_COMPLETE_NEW)
    _util.MarkSubObjComplete(_text.C4_4SUBOBJ1, _text.C4_4SUBSUB1A)
    _util.RemoveInventoryItem(_id.C4_InventoryItem_SuperHelium)
    _util.AddInventoryItem(_id.C4_InventoryItem_BallonFilled)
    _util.DelItem(_util.GetSelf())
  end
end
