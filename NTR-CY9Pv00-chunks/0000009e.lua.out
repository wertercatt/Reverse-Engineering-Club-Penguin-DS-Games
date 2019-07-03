if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C3_CR_DOT_1)
    _util.AddPlayerOption(_text.C3_CR_DOT_1A, _const.CHANGE_NPC, _id.C3_CR_Gary, 0)
    _util.AddPlayerOption(_text.C3_CR_DOT_1B, _const.CHANGE_NPC, _id.C3_CR_Gary, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C3_CR_DOT_2, _const.CHANGE_NPC, _id.C3_CR_JPG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C3_CR_DOT_3, _const.CHANGE_NPC, _id.C3_CR_JPG, 3)
  end
end
