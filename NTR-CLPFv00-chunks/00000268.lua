if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(924, 925, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(926, 927, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(928, 929, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(930, -1, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(931)
    _util.AddDialogButton(932, _const.CHANGE_DIALOG, 5)
    _util.AddDialogButton(933, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 5 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(22)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
end
if _util.GetReason() == _const.COLLIDED then
end
