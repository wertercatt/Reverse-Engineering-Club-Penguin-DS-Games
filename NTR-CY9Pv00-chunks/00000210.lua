if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddMonologue(_text.COMMANDCOACH_STATIONNOTREADY_TOUCH, "DialogStrings", _const.END_DIALOG, 0)
end
