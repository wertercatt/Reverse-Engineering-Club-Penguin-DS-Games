if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("FPMission_Started") ~= 0 and _util.GetVar("FPMission_Started") ~= 10 and _util.GetVar("FPM10_missionComplete") == 0 then
    _util.AddDialog(3936, _const.END_DIALOG, 0)
  elseif _util.GetVar("FPM10_missionComplete") == 1 then
    _util.AddDialog(3949, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("FPMission_Started") == 0 then
    _util.ActivateNpc(_id.FPM10_PuffleOwner, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetConversationCount(0)
    _util.AddConversation(3938, 3939, -1, _const.CHANGE_NPC, _id.FPM10_PuffleOwner, 1)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("FPMission_Started") == 10 then
    _util.AddConversation(3946, 3947, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(3948, _const.END_DIALOG, 0)
  end
end
