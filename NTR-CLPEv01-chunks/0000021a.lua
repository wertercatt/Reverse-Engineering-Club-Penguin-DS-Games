if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(1578, 1579, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1580, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(1581)
    _util.AddLoopingOption(1582, -1, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(1583, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(32)
  end
end
