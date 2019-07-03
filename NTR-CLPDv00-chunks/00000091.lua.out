if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(1480, 1481, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1482)
    _util.SetConversationCount(2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(1491)
    _util.AddLoopingOption(1492, 1495, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1493, 1496, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1494, -1, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(4411, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 20 then
    _util.AddConversation(1486, 1487, -1, _const.CHANGE_DIALOG, 21)
  elseif _util.GetConversationCount() == 21 then
    _util.AddConversation(1488, 1489, -1, _const.CHANGE_DIALOG, 22)
  elseif _util.GetConversationCount() == 22 then
    _util.AddLoopingConv(1497)
    _util.AddLoopingOption(1498, 1501, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1499, 1502, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1500, -1, _const.CHANGE_DIALOG, 23)
  elseif _util.GetConversationCount() == 23 then
    _util.AddDialog(4412, _const.END_DIALOG, 22)
  elseif _util.GetConversationCount() == 30 then
    _util.AddConversation(1505, 1506, -1, _const.END_DIALOG, 22)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  itemID = _util.GetSource()
  if itemID == _id.M3C1_OilCanInv and _util.GetVar("M3C1_djCan") == 0 then
    _util.AddConversation(1503, 1504, -1, _const.CHANGE_DIALOG, 30)
    _util.SetVar("M3C1_djCan", 1)
  end
end
