if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.M11_PH_Villiage_GARYA_Q1)
    _util.AddPlayerOption(_text.M11_PH_Villiage_GARYA_A1, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.M11_PH_Villiage_GARYA_Q1, _const.CHANGE_NPC, _id.M11_VillageDot, 0)
  end
end
