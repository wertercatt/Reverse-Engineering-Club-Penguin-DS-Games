if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddDialog(714)
    _util.AddDialogButton(715, _const.CHANGE_DIALOG, 1)
    _util.AddDialogButton(716, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(21)
  end
end
if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.ITEM_DROPPED then
end
if _util.GetReason() == _const.COLLIDED then
end
