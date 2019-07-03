if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("GStart") == 0 then
      _util.AddNPCText(_text.C3_CR_DOT_1)
      _util.AddPlayerOption(_text.C3_CR_DOT_1A, _const.CHANGE_NPC, _id.C3_CR_Gary, 0)
      _util.AddPlayerOption(_text.C3_CR_DOT_1B, _const.CHANGE_NPC, _id.C3_CR_Gary, 0)
    else
      _util.AddNPCText(_text.C3_CR_ROOKIE_1)
      _util.AddPlayerOption(_text.C3_CR_ROOKIE_1A, _const.CHANGE_DIALOG, -1, 1)
      _util.AddPlayerOption(_text.C3_CR_ROOKIE_1B, _const.CHANGE_DIALOG, -1, 1)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.ActivateNpc(_id.C3_CR_Gary, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C3_CR_ROOKIE_2)
    _util.AddPlayerOption(_text.C3_CR_ROOKIE_2A, _const.CHANGE_NPC, _id.C3_CR_Gary, 10)
    _util.AddPlayerOption(_text.C3_CR_ROOKIE_2B, _const.CHANGE_NPC, _id.C3_CR_Gary, 10)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C3_CR_ROOKIE_3)
    _util.AddPlayerOption(_text.C3_CR_ROOKIE_3A, _const.CHANGE_NPC, _id.C3_CR_Gary, 14)
    _util.AddPlayerOption(_text.C3_CR_ROOKIE_3B, _const.CHANGE_NPC, _id.C3_CR_Gary, 14)
  end
end
