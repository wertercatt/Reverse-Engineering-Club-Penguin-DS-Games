if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M1C2_foundKeyPad") == 0 then
    _util.AddLoopingConv(339)
    _util.AddLoopingOption(341, 343, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(342, 346, _const.CHANGE_DIALOG, 10)
    _util.AddLoopingOption(348, -1, _const.CHANGE_DIALOG, 66)
  elseif _util.GetConversationCount() == 66 then
    _util.AddConversation(349, -1, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(343, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(344, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(345, 350, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddLoopingConv(351)
    _util.AddLoopingOption(342, 346, _const.CHANGE_DIALOG, 10)
    _util.AddLoopingOption(348, -1, _const.CHANGE_DIALOG, 66)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(346, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(347, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("M1C2_foundKeyPad") == 1 then
    _util.AddConversation(352, 354, -1, _const.CHANGE_DIALOG, 21)
  elseif _util.GetConversationCount() == 21 then
    _util.AddDialog(355, _const.END_DIALOG, 0)
  end
end
