if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddMonologue(651, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddMonologue(652, "DialogStrings", _const.END_DIALOG)
    if _util.GetVar("M1C3_uberVariable") < 10 then
      _util.SetVar("M1C3_uberVariable", 10)
    end
  end
end
