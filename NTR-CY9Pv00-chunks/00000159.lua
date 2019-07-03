if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMBINE)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("GrabDVDs") == 1 then
    _util.SetVar("GrabDVDs", 2)
    _util.AddInventoryItem(_id.M11_EmptyBox)
    _util.DelItem(_id.M11_EmptyBox)
  else
    _util.AddPlayerThought(_text.M11_LH_DVDBOX_THOUGHT)
  end
end
if _util.GetReason() == _const.COMBINE and _util.GetSource() == _id.M11_DVDs then
  _util.RemoveInventoryItem(_id.M11_EmptyBox)
  _util.RemoveInventoryItem(_id.M11_DVDs)
  _util.AddInventoryItem(_id.M11_DVDsInBox)
  _util.SetCombinationSuccess(1)
end
