if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(2372)
    _util.AddLoopingOption(2373, 2376, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2374, 2377, _const.UPDATE_LOOP)
    _util.AddLoopingOption(2375, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4725, _const.END_DIALOG, 0)
  end
end
