if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3096)
    _util.AddLoopingOption(3098, 3102, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(3099, 3103, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3100, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3101, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(3102, 3104, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(3105, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(3109, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 20 then
    _util.AddDialog(3110, _const.END_DIALOG, 0)
  end
end
