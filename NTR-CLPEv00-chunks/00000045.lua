if _util.GetActiveMission() == 1 and _util.GetActiveChapter() == 1 then
  if _util.GetConversationCount() == 1 then
    _util.AddMonologue(177, "DialogStrings", _const.CHANGE_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddMonologue(178)
    _util.SetVar("M1C1_lightIntro", 1)
    _util.SetConversationCount(3)
  end
end
