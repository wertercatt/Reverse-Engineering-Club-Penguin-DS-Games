if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 and _util.GetVar("M3C1_impressedLoop") == 0 then
    _util.AddLoopingConv(1360)
    _util.AddLoopingOption(1361, 1364, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1362, 1365, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1363, -1, _const.CHANGE_DIALOG, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(4395, _const.END_DIALOG, 0)
  else
    _util.AddDialog(1568, _const.END_DIALOG, 0)
    _util.SwitchState("", _id.M3C1_Loop_Rink)
  end
end
