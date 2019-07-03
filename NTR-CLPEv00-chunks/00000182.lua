if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(1826)
    _util.AddLoopingOption(1827, 1829, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(1828, 1830, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(1829, 1832, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(1833, 1828, -1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddDialog(1830, _const.CHANGE_DIALOG, 102)
  elseif _util.GetConversationCount() == 102 then
    _util.AddLoopingConv(1831)
    _util.AddLoopingOption(1834, -1, _const.CHANGE_DIALOG, 103)
    _util.AddLoopingOption(1835, -1, _const.CHANGE_DIALOG, 104)
  elseif _util.GetConversationCount() == 104 then
    _util.AddDialog(4776, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 103 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(33)
  end
end
