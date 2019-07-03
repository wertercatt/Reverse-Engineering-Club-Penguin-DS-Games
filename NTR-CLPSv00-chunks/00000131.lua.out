if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.TOUCHED)
end
if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("M3C3_GotOil") == 1 then
      _util.AddMonologue(1953, "DialogStrings", _const.CHANGE_DIALOG, 1)
    elseif _util.GetVar("M3C3_GotSigns") == 0 then
      _util.AddMonologue(1951, "DialogStrings", _const.END_DIALOG, 0)
    elseif _util.GetVar("M3C3_GotSigns") == 1 then
      _util.AddMonologue(1952, "DialogStrings", _const.END_DIALOG, 0)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.AddItem(_id.M3C3_RobotShadow)
    _util.ActivateNpc(_id.M3C3_RobotShadow, 100)
  end
end
