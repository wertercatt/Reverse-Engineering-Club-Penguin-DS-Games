if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddMonologue(_text.ITEM_GADGETROOM_JETPACK_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
end
