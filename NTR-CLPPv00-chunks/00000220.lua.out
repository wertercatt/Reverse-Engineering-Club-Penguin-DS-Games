if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_GotOil") == 0 then
    _util.AddMonologue(1942)
  elseif _util.GetVar("M3C3_talkedToCatOnce") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddMonologue(1943, "DialogStrings", _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddMonologue(1944, "DialogStrings", _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.SetVar("M3C3_talkedToCatOnce", 1)
      _util.AddMonologue(1945, "DialogStrings", _const.END_DIALOG, 0)
      _util.SetObjective(650)
    end
  elseif _util.GetConversationCount() == 0 then
    _util.AddMonologue(1946, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(1947)
  end
end
