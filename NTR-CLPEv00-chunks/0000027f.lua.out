if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 20 then
    _util.AddDialog(1580, _const.CHANGE_NPC, _id.M3C1_Director, 21)
  elseif _util.GetConversationCount() == 40 then
    _util.AddDialog(1584, _const.CHANGE_NPC, _id.M3C1_Director, 41)
  end
end
