if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4303)
    _util.AddLoopingOption(4304, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(4305, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetConversationCount(0)
    _util.StartMiniGame(_const.SNOWBOARDING, 0)
  end
end
