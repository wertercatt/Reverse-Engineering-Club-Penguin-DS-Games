if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C1_haveCard1") == 0 then
    _util.AddLoopingConv(13)
    _util.AddLoopingOption(14, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("M1C1_haveCard1") == 1 and _util.GetVar("M1C1_baristaCard1") == 0 then
    _util.AddLoopingConv(15)
    _util.AddLoopingOption(16, 19, _const.UPDATE_LOOP)
    _util.AddLoopingOption(17, 20, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(18, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(21, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(20, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddMonologue(23)
    _util.SetConversationCount(0)
  elseif _util.GetConversationCount() == 98 then
    _util.AddDialog(42, _const.END_DIALOG, 0)
  elseif _util.GetVar("M1C1_baristaCard1") == 1 and _util.GetConversationCount() ~= 99 then
    _util.AddLoopingConv(30)
    _util.AddLoopingOption(32, 38, _const.UPDATE_LOOP)
    _util.AddLoopingOption(34, 40, _const.UPDATE_LOOP)
    _util.AddLoopingOption(36, -1, _const.CHANGE_DIALOG, 98)
  elseif _util.GetConversationCount() == 99 then
    _util.AddConversation(25, 26, -1, _const.CHANGE_DIALOG, 98)
    _util.SetExitLocked(_id.Doors_Coffee2Town, false)
    _util.SetConversationCount(0)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M1C1_Card1 then
    _util.AddDialog(24, _const.CHANGE_DIALOG, 99)
    _util.SetVar("M1C1_baristaCard1", 1)
  elseif _util.GetSource() == _id.M1C1_Card2 then
    _util.AddDialog(27, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Card3 then
    _util.AddDialog(28, _const.END_DIALOG, 0)
  elseif _util.GetSource() == _id.M1C1_Map then
    _util.AddDialog(29, _const.END_DIALOG, 0)
  end
end
