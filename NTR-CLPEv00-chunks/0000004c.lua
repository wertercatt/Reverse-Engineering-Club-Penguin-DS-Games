if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("robostatus") < 4 then
    _util.AddMonologue(3391)
  else
    _util.AddMonologue(3392)
  end
end
