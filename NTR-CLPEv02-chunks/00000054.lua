if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M4C3_fightSB") == 0 then
    _util.AddMonologue(2625)
  else
    _util.AddMonologue(2626)
  end
end
