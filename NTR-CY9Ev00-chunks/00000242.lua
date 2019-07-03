if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.SPECIAL_CASE)
end
if _util.GetReason() == _const.SPECIAL_CASE then
  if _util.GetVar("LanternOn") == 0 then
    _util.IncVar("LanternOn")
  else
    _util.DecVar("LanternOn")
  end
end
