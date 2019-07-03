if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ActivateNpc(_id.C4_CommandRoom_NPC_Director, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C4_CR_DOT_1, _const.CHANGE_NPC, _id.C4_CommandRoom_NPC_JPG, 2)
  end
end
