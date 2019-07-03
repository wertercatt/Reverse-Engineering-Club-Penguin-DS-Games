if _util.GetReason() == _const.CREATED then
end
if _util.GetActiveMission() == 2 and _util.GetActiveChapter() == 3 and _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M2C3_cartCrashed") == 0 then
    _util.AddMonologue(1266)
  else
    _util.AddMonologue(1231)
  end
end
