if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(1276, _const.CHANGE_NPC, _id.M2C3_JPG_CR, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(1279)
    _util.AddDialogButton(1280, _const.CHANGE_NPC, _id.M2C3_Director, 2)
  end
end
