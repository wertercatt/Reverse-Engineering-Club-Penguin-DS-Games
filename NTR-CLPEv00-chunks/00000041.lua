if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M1C3_fireOut") == 0 then
    _util.AddMonologue(680)
  elseif _util.GetVar("M1C3_fireOut") == 1 then
    _util.AddMonologue(681)
  end
end
