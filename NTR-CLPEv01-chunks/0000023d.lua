if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M1C2_foundKeyPad") == 0 then
    _util.AddLoopingConv(327)
    _util.AddLoopingOption(329, 331, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(330, 334, _const.CHANGE_DIALOG, 10)
    _util.AddLoopingOption(336, -1, _const.CHANGE_DIALOG, 66)
  elseif _util.GetConversationCount() == 66 then
    _util.AddConversation(337, -1, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(331, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(332, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(333, 338, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddLoopingConv(339)
    _util.AddLoopingOption(330, 334, _const.CHANGE_DIALOG, 10)
    _util.AddLoopingOption(336, -1, _const.CHANGE_DIALOG, 66)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(334, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(335, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("M1C2_foundKeyPad") == 1 then
    _util.AddConversation(340, 342, -1, _const.CHANGE_DIALOG, 21)
  elseif _util.GetConversationCount() == 21 then
    _util.AddDialog(343, _const.END_DIALOG, 0)
  end
end
