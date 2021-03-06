if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3205)
    _util.AddLoopingOption(3207, 3210, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3208, 3211, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(3209, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(3211, 3212, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(3213, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 10 then
    _util.AddMonologue(3204, "DialogStrings", _const.END_DIALOG, 0)
  end
end
