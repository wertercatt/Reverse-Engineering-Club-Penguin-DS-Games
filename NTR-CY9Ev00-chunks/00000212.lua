if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.M5_NPC_DOCKPENGUIN_1, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.M5_NPC_DOCKPENGUIN_2, _const.END_DIALOG, -1, 0)
  end
end
