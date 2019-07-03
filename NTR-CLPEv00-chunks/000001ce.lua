if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M3C1_tiedJackHammer") == 0 then
    _util.AddMonologue(1431, "DialogStrings", _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 0 and _util.GetVar("M3C1_tiedJackHammer") == 1 then
    _util.ActivateNpc(_util.GetSelf(), 1)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(1432, _const.CHANGE_NPC, _id.M3C1_Rory, 0)
    _util.SetConversationCount(1)
  elseif _util.GetConversationCount() == 1 and _util.GetVar("M3C1_tiedJackHammer") == 0 then
    _util.AddLoopingConv(1454)
    _util.AddLoopingOption(1455, 1458, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1456, 1459, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1457, -1, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddDialog(4708, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 and _util.GetVar("M3C1_tiedJackHammer") == 1 and _util.GetVar("M3C1_havePants") == 0 then
    _util.AddLoopingConv(1460)
    _util.AddLoopingOption(1461, 1464, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1462, 1465, _const.CHANGE_DIALOG, 2)
    _util.AddLoopingOption(1463, -1, _const.CHANGE_DIALOG, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddDialog(4709, _const.END_DIALOG, 1)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(1465, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("M3C1_ClothingPermission", 1)
    _util.AddConversation(1466, 1467, -1, _const.CHANGE_DIALOG, 33)
  elseif _util.GetConversationCount() == 33 then
    _util.AddDialog(4710, _const.END_DIALOG, 4)
  elseif _util.GetConversationCount() == 4 and _util.GetVar("M3C1_havePants") == 0 then
    _util.AddLoopingConv(1468)
    _util.AddLoopingOption(1469, 1472, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1470, 1473, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1471, -1, _const.CHANGE_DIALOG, 44)
  elseif _util.GetConversationCount() == 4 and _util.GetVar("M3C1_havePants") == 1 then
    _util.AddLoopingConv(1468)
    _util.AddLoopingOption(1469, 1472, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1471, -1, _const.CHANGE_DIALOG, 44)
  elseif _util.GetConversationCount() == 44 then
    _util.AddDialog(4711, _const.END_DIALOG, 4)
  end
end
