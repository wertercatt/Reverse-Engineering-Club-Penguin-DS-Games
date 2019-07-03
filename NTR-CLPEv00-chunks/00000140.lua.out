if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("cartWelded") == 0 then
    _util.AddLoopingConv(1114)
    _util.AddLoopingOption(1116, 1120, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(1118, 1123, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1119, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4685, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddDialog(1120, _const.CHANGE_DIALOG, 42)
  elseif _util.GetConversationCount() == 42 then
    _util.AddLoopingConv(1122)
    _util.AddLoopingOption(1124, 1126, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1125, 1127, _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(1127)
    _util.AddLoopingOption(1128, 1130, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1129, 1131, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1132, -1, _const.CHANGE_DIALOG, 30)
    _util.SetVar("havePermission", 1)
    _util.SetExitLocked(_id.Doors_MineShack2MineShed, false)
  elseif _util.GetConversationCount() == 30 then
    _util.AddDialog(4686, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 and _util.GetVar("cartWelded") == 0 then
    _util.AddLoopingConv(1133)
    _util.AddLoopingOption(1134, 1136, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(1135, 1138, _const.CHANGE_DIALOG, 23)
    _util.AddLoopingOption(1140, -1, _const.CHANGE_DIALOG, 31)
  elseif _util.GetConversationCount() == 31 then
    _util.AddDialog(4687, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 4 then
    _util.AddDialog(1136, _const.CHANGE_DIALOG, 43)
  elseif _util.GetConversationCount() == 43 then
    _util.AddConversation(1137, 1141, -1, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddConversation(1142, 1143, -1, _const.CHANGE_DIALOG, 32)
  elseif _util.GetConversationCount() == 32 then
    _util.AddDialog(4688, _const.END_DIALOG, 3)
  elseif _util.GetConversationCount() == 23 then
    _util.AddDialog(1138, _const.CHANGE_DIALOG, 24)
  elseif _util.GetConversationCount() == 24 then
    _util.AddConversation(1139, 1140, -1, _const.CHANGE_DIALOG, 31)
  elseif _util.GetVar("cartWelded") == 1 and _util.GetConversationCount() < 6 then
    _util.AddDialog(1144, _const.CHANGE_DIALOG, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddDialog(1145, _const.CHANGE_DIALOG, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddLoopingConv(1146)
    _util.AddLoopingOption(1147, 1150, _const.CHANGE_DIALOG, 8)
    _util.AddLoopingOption(1148, 1151, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1149, -1, _const.CHANGE_DIALOG, 70)
  elseif _util.GetConversationCount() == 70 then
    _util.AddDialog(4689, _const.END_DIALOG, 7)
  elseif _util.GetConversationCount() == 8 then
    _util.AddLoopingConv(1150)
    _util.AddLoopingOption(1152, 1155, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1153, 1156, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1154, -1, _const.CHANGE_DIALOG, 80)
  elseif _util.GetConversationCount() == 80 then
    _util.AddDialog(4690, _const.END_DIALOG, 7)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
end
if _util.GetReason() == _const.COLLIDED then
end
