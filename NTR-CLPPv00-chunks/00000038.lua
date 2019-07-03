if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(3045)
    _util.AddLoopingOption(3047, 3050, _const.UPDATE_LOOP)
    _util.AddLoopingOption(3048, 3051, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(3049, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(3051, 3052, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(3053, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 10 then
    _util.AddMonologue(3044, "DialogStrings", _const.END_DIALOG, 0)
  end
end
