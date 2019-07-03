if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(672)
end
if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_wentInCave") == 0 and _util.GetConversationCount() == 0 then
    _util.AddMonologue(1936)
  else
    _util.AddMonologue(1937)
  end
  if _util.GetConversationCount() == 100 then
    _util.AddMonologue(1933, "DialogStrings", _const.CHANGE_DIALOG, 101)
    _util.PlaySFX(81)
  elseif _util.GetConversationCount() == 101 then
    _util.AddMonologue(1934, "DialogStrings", _const.CHANGE_DIALOG, 102)
  elseif _util.GetConversationCount() == 102 then
    _util.SetVar("M3C3_wildernessIntroComplete", 1)
    _util.AddMonologue(1935, "DialogStrings", _const.END_DIALOG, 0)
  end
end
