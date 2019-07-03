if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(1510, 1511, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1512)
    _util.SetConversationCount(2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(1521)
    _util.AddLoopingOption(1522, 1525, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1523, 1526, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1524, -1, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(4719, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 20 then
    _util.AddConversation(1516, 1517, -1, _const.CHANGE_DIALOG, 21)
  elseif _util.GetConversationCount() == 21 then
    _util.AddConversation(1518, 1519, -1, _const.CHANGE_DIALOG, 22)
  elseif _util.GetConversationCount() == 22 then
    _util.AddLoopingConv(1527)
    _util.AddLoopingOption(1528, 1531, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1529, 1532, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1530, -1, _const.CHANGE_DIALOG, 23)
  elseif _util.GetConversationCount() == 23 then
    _util.AddDialog(4720, _const.END_DIALOG, 22)
  elseif _util.GetConversationCount() == 30 then
    _util.AddConversation(1535, 1536, -1, _const.END_DIALOG, 22)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  itemID = _util.GetSource()
  if itemID == _id.M3C1_OilCanInv and _util.GetVar("M3C1_djCan") == 0 then
    _util.AddConversation(1533, 1534, -1, _const.CHANGE_DIALOG, 30)
    _util.SetVar("M3C1_djCan", 1)
  end
end
