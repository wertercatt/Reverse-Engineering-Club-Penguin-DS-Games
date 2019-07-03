if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(1249, _const.CHANGE_NPC, _id.M2C3_JPG_CR, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(1252)
    _util.AddDialogButton(1253, _const.CHANGE_NPC, _id.M2C3_Director, 2)
  end
end
