if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 0 and _util.GetActiveChapter() == 5 and _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddMonologue(1098, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1099, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddMonologue(1100, "DialogStrings", _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddMonologue(1101, "DialogStrings", _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddMonologue(1102, "DialogStrings", _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddMonologue(1103, "DialogStrings", _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.PushCamera()
    _util.AddDialogButton(1104, _const.CHANGE_DIALOG, 7)
    _util.AddDialogButton(1105, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 7 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(23)
  end
end
