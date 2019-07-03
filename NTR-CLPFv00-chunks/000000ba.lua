if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddMonologue(2250)
end
