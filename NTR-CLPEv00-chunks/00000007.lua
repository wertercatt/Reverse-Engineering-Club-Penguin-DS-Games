if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3332)
    _util.AddLoopingOption(3334, 3338, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3335, 3339, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3336, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3337, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 10 then
    _util.AddConversation(3327, 3328, -1, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(3329, _const.END_DIALOG, 0)
  end
end
