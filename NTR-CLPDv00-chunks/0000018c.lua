if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(1232)
    _util.AddLoopingOption(1233, 1236, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1234, 1237, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1235, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4387, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1241, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(1242, 1243, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(1244, 1245, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddConversation(1246, 1247, -1, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.ChangeRoom(8)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M2C3_Crowbar then
  _util.AddDialog(4319, _const.END_DIALOG, 0)
end
