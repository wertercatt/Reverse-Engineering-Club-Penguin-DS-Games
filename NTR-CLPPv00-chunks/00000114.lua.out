if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 0 and _util.GetActiveChapter() == 5 and _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddMonologue(4547, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1074, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddMonologue(1075, "DialogStrings", _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddMonologue(1076, "DialogStrings", _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddMonologue(1077, "DialogStrings", _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddMonologue(1078, "DialogStrings", _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.PushCamera()
    _util.AddDialogButton(1079, _const.CHANGE_DIALOG, 7)
    _util.AddDialogButton(1080, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 7 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(23)
  end
end
