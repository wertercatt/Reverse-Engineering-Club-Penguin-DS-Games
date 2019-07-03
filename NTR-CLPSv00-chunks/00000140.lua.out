if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("cartWelded") == 0 then
    _util.AddLoopingConv(1089)
    _util.AddLoopingOption(1091, 1095, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(1093, 1098, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1094, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4377, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(1095, _const.CHANGE_DIALOG, 42)
  elseif _util.GetConversationCount() == 42 then
    _util.AddLoopingConv(1097)
    _util.AddLoopingOption(1099, 1101, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1100, 1102, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(1102)
    _util.AddLoopingOption(1103, 1105, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1104, 1106, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1107, -1, _const.CHANGE_DIALOG, 30)
    _util.SetVar("havePermission", 1)
    _util.SetExitLocked(_id.Doors_MineShack2MineShed, false)
  elseif _util.GetConversationCount() == 30 then
    _util.AddDialog(4378, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 and _util.GetVar("cartWelded") == 0 then
    _util.AddLoopingConv(1108)
    _util.AddLoopingOption(1109, 1111, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(1110, 1113, _const.CHANGE_DIALOG, 23)
    _util.AddLoopingOption(1115, -1, _const.CHANGE_DIALOG, 31)
  elseif _util.GetConversationCount() == 31 then
    _util.AddDialog(4379, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(1111, _const.CHANGE_DIALOG, 43)
  elseif _util.GetConversationCount() == 43 then
    _util.AddConversation(1112, 1116, -1, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddConversation(1117, 1118, -1, _const.CHANGE_DIALOG, 32)
  elseif _util.GetConversationCount() == 32 then
    _util.AddDialog(4380, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 23 then
    _util.AddDialog(1113, _const.CHANGE_DIALOG, 24)
  elseif _util.GetConversationCount() == 24 then
    _util.AddConversation(1114, 1115, -1, _const.CHANGE_DIALOG, 31)
  elseif _util.GetVar("cartWelded") == 1 and _util.GetConversationCount() < 6 then
    _util.AddDialog(1119, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(1120, _const.CHANGE_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddLoopingConv(1121)
    _util.AddLoopingOption(1122, 1125, _const.CHANGE_DIALOG, 8)
    _util.AddLoopingOption(1123, 1126, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1124, -1, _const.CHANGE_DIALOG, 70)
  elseif _util.GetConversationCount() == 70 then
    _util.AddDialog(4381, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 8 then
    _util.AddLoopingConv(1125)
    _util.AddLoopingOption(1127, 1130, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1128, 1131, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1129, -1, _const.CHANGE_DIALOG, 80)
  elseif _util.GetConversationCount() == 80 then
    _util.AddDialog(4382, _const.END_DIALOG, 7)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
end
if _util.GetReason() == _const.COLLIDED then
end
