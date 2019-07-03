if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C1_haveCard1") == 0 then
    _util.AddLoopingConv(7)
    _util.AddLoopingOption(8, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("M1C1_haveCard1") == 1 and _util.GetVar("M1C1_baristaCard1") == 0 then
    _util.AddLoopingConv(9)
    _util.AddLoopingOption(10, 13, _const.UPDATE_LOOP)
    _util.AddLoopingOption(11, 14, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(12, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(15, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(14, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddMonologue(17)
    _util.SetConversationCount(0)
  elseif _util.GetConversationCount() == 98 then
    _util.AddDialog(35, _const.END_DIALOG, 0)
  elseif _util.GetVar("M1C1_baristaCard1") == 1 and _util.GetConversationCount() ~= 99 then
    _util.AddLoopingConv(24)
    _util.AddLoopingOption(26, 32, _const.UPDATE_LOOP)
    _util.AddLoopingOption(28, 33, _const.UPDATE_LOOP)
    _util.AddLoopingOption(30, -1, _const.CHANGE_DIALOG, 98)
  elseif _util.GetConversationCount() == 99 then
    _util.AddConversation(19, 20, -1, _const.CHANGE_DIALOG, 98)
    _util.SetExitLocked(_id.Doors_Coffee2Town, false)
    _util.SetConversationCount(0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M1C1_Card1 then
    _util.AddDialog(18, _const.CHANGE_DIALOG, 99)
    _util.SetVar("M1C1_baristaCard1", 1)
  elseif _util.GetSource() == _id.M1C1_Card2 then
    _util.AddDialog(21, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card3 then
    _util.AddDialog(22, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Map then
    _util.AddDialog(23, _const.END_DIALOG, 0)
  end
end
