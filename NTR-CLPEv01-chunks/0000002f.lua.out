if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.PlaySFX(155)
    _util.AddDialog(1267, _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1268, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddLoopingConv(1269)
    _util.AddLoopingOption(1270, -1, _const.CHANGE_DIALOG, 3)
    _util.AddLoopingOption(1271, -1, _const.END_DIALOG, 2)
    _util.PlaySFX(155)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("FPMission_Started", 0)
    _util.SetVar("FP_ITEM_SETUP", 0)
    _util.StartMission(31)
  end
end
