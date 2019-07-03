if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3098)
    _util.AddLoopingOption(3100, 3103, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3101, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(3102, _const.END_DIALOG, 0)
  end
end
