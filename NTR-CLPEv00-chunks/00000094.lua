if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(206, _const.CHANGE_NPC, _id.M3C3_Gary_Gadget, 999)
  elseif _util.GetConversationCount() == 999 then
    _util.AddDialog(207, _const.CHANGE_NPC, _id.M3C3_Gary_Gadget, 999)
  end
end
