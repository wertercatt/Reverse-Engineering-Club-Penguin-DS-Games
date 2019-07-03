if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(1474)
    _util.AddLoopingOption(1475, 1478, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1476, 1479, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(1477, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4714, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddConversation(1479, 1480, -1, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(1481, 1482, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(4715, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 80 then
    _util.AddConversation(1503, 1504, -1, _const.CHANGE_DIALOG, 81)
  elseif _util.GetConversationCount() == 81 then
    _util.SetCursorPos(_util.GetX(_id.M3C1_DancerScared), _util.GetY(_id.M3C1_DancerScared), 1)
    _util.SetCursorPos(_util.GetX(_id.M3C1_DJScared), _util.GetY(_id.M3C1_DJScared))
    _util.AddConversation(1505, 1506, -1, _const.CHANGE_NPC, _id.M3C1_DancerScared, 82)
    _util.SetConversationCount(83)
  elseif _util.GetConversationCount() == 83 then
    _util.AddDialog(1603, _const.END_DIALOG, 83)
  end
end
