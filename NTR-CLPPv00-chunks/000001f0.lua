if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(4676, 4677, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(4678, 4679, -1, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(4680, 4681, -1, _const.END_DIALOG, 2)
  end
end
