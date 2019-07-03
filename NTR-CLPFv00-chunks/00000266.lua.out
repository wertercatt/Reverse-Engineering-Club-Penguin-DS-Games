if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddLoopingConv(4260)
    _util.AddLoopingOption(4262, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(4263, -1, _const.END_DIALOG, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(11)
  end
end
