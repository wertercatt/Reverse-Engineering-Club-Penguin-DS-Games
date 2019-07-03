if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4604)
    _util.AddLoopingOption(4605, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(4606, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetConversationCount(0)
    _util.StartMiniGame(_const.DANCE_CHALLENGE)
  end
end
