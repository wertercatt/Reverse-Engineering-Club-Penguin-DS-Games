if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(2088, 2089, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(2090, 2091, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(2092)
    _util.AddLoopingOption(2093, -1, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(2094, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(2095, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 4 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(41)
  end
end
