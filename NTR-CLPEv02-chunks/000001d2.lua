if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddItem(_id.M1C3_JetPackGuy_WR)
    _util.AddConversation(688, 689, -1, _const.CHANGE_NPC, _id.M1C3_JetPackGuy_WR, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(691, _const.CHANGE_NPC, _id.M1C3_JetPackGuy_WR, 2)
  end
end
