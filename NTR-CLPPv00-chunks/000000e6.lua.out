if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddMonologue(4254)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(4253, "DialogStrings", _const.END_DIALOG, 0)
  end
end
