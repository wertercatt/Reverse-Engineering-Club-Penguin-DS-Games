if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M3C1_tiedJackHammer") == 0 then
    _util.AddMonologue(1401, "DialogStrings", _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("M3C1_tiedJackHammer") == 1 then
    _util.ActivateNpc(_util.GetSelf(), 1)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(1402, _const.CHANGE_NPC, _id.M3C1_Rory, 0)
    _util.SetConversationCount(1)
  elseif _util.GetConversationCount() == 1 and _util.GetVar("M3C1_tiedJackHammer") == 0 then
    _util.AddLoopingConv(1424)
    _util.AddLoopingOption(1425, 1428, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1426, 1429, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1427, -1, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(4400, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 and _util.GetVar("M3C1_tiedJackHammer") == 1 and _util.GetVar("M3C1_havePants") == 0 then
    _util.AddLoopingConv(1430)
    _util.AddLoopingOption(1431, 1434, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1432, 1435, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(1433, -1, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(4401, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(1435, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("M3C1_ClothingPermission", 1)
    _util.AddConversation(1436, 1437, -1, _const.CHANGE_DIALOG, 33)
  elseif _util.GetConversationCount() == 33 then
    _util.AddDialog(4402, _const.END_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 and _util.GetVar("M3C1_havePants") == 0 then
    _util.AddLoopingConv(1438)
    _util.AddLoopingOption(1439, 1442, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1440, 1443, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1441, -1, _const.CHANGE_DIALOG, 44)
  elseif _util.GetConversationCount() == 4 and _util.GetVar("M3C1_havePants") == 1 then
    _util.AddLoopingConv(1438)
    _util.AddLoopingOption(1439, 1442, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1441, -1, _const.CHANGE_DIALOG, 44)
  elseif _util.GetConversationCount() == 44 then
    _util.AddDialog(4403, _const.END_DIALOG, 4)
  end
end
