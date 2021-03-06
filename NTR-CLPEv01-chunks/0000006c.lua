if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddConversation(1536, 1537, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(1538, 1540, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(1541)
    _util.AddLoopingOption(1542, 1545, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1543, 1546, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1544, 1547, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(1576, _const.CHANGE_ROOM, 8)
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("M3C1_foundLoop") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1513)
      _util.AddComOption(1514, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1515, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1516, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C1_foundLoop") == 1 and _util.GetVar("M3C1_impressedLoop") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1517)
      _util.AddComOption(1518, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1519, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1520, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C1_impressedLoop") == 1 and _util.GetVar("M3C1_foundPop") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1521)
      _util.AddComOption(1522, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1523, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1524, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C1_foundPop") == 1 and _util.GetVar("M3C1_impressedPop") == 0 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1525)
      _util.AddComOption(1526, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1527, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1528, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("M3C1_impressedPop") == 1 then
    if _util.GetComCount() == 0 then
      _util.AddComText(1529)
      _util.AddComOption(1530, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(1531, _const.CHANGE_DIALOG, 2)
      _util.AddComOption(1532, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(1533, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(1534, _const.END_DIALOG, 0)
    end
  end
end
