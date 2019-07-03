if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_GotOil") == 0 then
    _util.AddMonologue(1978)
  elseif _util.GetVar("M3C3_talkedToCatOnce") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddMonologue(1979, "DialogStrings", _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddMonologue(1980, "DialogStrings", _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.SetVar("M3C3_talkedToCatOnce", 1)
      _util.AddMonologue(1981, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetObjective(807)
    end
  elseif _util.GetConversationCount() == 0 then
    _util.AddMonologue(1982, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1983)
  end
end
