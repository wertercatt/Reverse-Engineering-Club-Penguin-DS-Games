if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2592)
    _util.AddLoopingOption(2594, 2598, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2595, 2599, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2596, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(2597, _const.END_DIALOG, 0)
  end
end
