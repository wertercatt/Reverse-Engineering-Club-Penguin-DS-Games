if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED then
  _util.AddMonologue(1601)
  _util.SwitchState("", _id.M3C1_Loop_Rink)
end
