if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(3735, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 7)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(3737, 3738, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(3739, _const.CHANGE_NPC, _id.FP03_NPC2_Forest, 8)
  elseif _util.GetConversationCount() == 3 then
    _util.SetConversationCount(4)
    _util.AddConversation(3741, 3742, -1, _const.CHANGE_NPC, _id.FP03_NPC1_Forest, 11)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(3748, _const.END_DIALOG, 4)
  end
end
