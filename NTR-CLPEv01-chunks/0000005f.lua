if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 1 then
    _util.AddDialog(1394, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(4398, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(4399, _const.END_DIALOG, 0)
  elseif _util.GetVar("M3C1_waitingIntro") == 0 then
    _util.AddLoopingConv(1391)
    _util.AddLoopingOption(1392, 1394, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(1393, -1, _const.CHANGE_DIALOG, 2)
    _util.SetVar("M3C1_waitingIntro", 1)
  elseif _util.GetVar("M3C1_waitingIntro") == 1 then
    _util.AddLoopingConv(1395)
    _util.AddLoopingOption(1396, 1399, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1397, 1400, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1398, -1, _const.CHANGE_DIALOG, 3)
  end
end
