if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M10_JPGJetPack then
  _util.RemoveInventoryItem(_id.M10_JPGJetPack)
  _util.ActivateNpc(_id.M10_NightClubHerbert, 3)
end
