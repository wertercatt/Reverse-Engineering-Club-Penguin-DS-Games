if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3172)
    _util.AddLoopingOption(3174, 3178, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3175, 3179, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3176, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3177, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 10 then
    _util.AddConversation(3167, 3168, -1, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(3169, _const.END_DIALOG, 0)
  end
end
