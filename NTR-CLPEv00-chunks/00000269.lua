if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 1 then
    _util.AddDialog(716, _const.CHANGE_NPC, _id.M1C3_Director, 3)
    _util.SetConversationCount(2)
  elseif _util.GetConversationCount() == 2 then
    _util.ActivateNpc(_id.M1C3_Director, 5)
  end
end
