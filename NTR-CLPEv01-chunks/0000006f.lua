if _util.GetActiveMission() == 3 and _util.GetActiveChapter() == 1 and _util.GetReason() == _const.TOUCHED and not _util.HasInventoryItem(_id.M3C1_OilCanInv) then
  _util.AddMonologue(4329)
end
