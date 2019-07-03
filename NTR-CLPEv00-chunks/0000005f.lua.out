if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 1 then
    _util.AddDialog(1424, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddDialog(4706, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 3 then
    _util.AddDialog(4707, _const.END_DIALOG, 0)
  elseif _util.GetVar("M3C1_waitingIntro") == 0 then
    _util.AddLoopingConv(1421)
    _util.AddLoopingOption(1422, 1424, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(1423, -1, _const.CHANGE_DIALOG, 2)
    _util.SetVar("M3C1_waitingIntro", 1)
  elseif _util.GetVar("M3C1_waitingIntro") == 1 then
    _util.AddLoopingConv(1425)
    _util.AddLoopingOption(1426, 1429, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1427, 1430, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1428, -1, _const.CHANGE_DIALOG, 3)
  end
end
