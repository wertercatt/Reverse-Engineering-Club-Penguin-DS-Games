if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 100 then
    _util.SetConversationCount(0)
    _util.AddDialog(2907, _const.CHANGE_NPC, _id.M5C1_JPG_Stage, 100)
  elseif _util.GetConversationCount() == 0 then
    _util.AddConversation(2921, 2923, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(2924, _const.END_DIALOG, 0)
  end
end
