if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_haveCocoaMachine") == 0 then
    _util.AddMonologue(1826)
  else
    _util.AddMonologue(4511)
  end
end
