if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddMonologue(685)
  if _util.GetVar("M1C3_uberVariable") < 9 then
    _util.SetVar("M1C3_uberVariable", 9)
  end
end
