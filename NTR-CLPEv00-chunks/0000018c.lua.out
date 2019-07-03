if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(1259)
    _util.AddLoopingOption(1260, 1263, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1261, 1264, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1262, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4695, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1268, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddConversation(1269, 1270, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddConversation(1271, 1272, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddConversation(1273, 1274, -1, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.ChangeRoom(8)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.M2C3_Crowbar then
  _util.AddDialog(4626, _const.END_DIALOG, 0)
end
