if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4264)
    _util.AddLoopingOption(4266, 4270, _const.UPDATE_LOOP)
    _util.AddLoopingOption(4267, 4271, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(4268, 4269, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(4269, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(4271, 4272, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(4273, _const.END_DIALOG, 0)
  end
end
