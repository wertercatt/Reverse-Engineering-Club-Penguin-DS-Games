if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(2573, 2575, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(2576, 2577, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(2578)
    _util.AddLoopingOption(2579, -1, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(2580, -1, _const.CHANGE_DIALOG, 22)
  elseif _util.GetConversationCount() == 22 then
    _util.AddDialog(2581, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(43)
  end
end
