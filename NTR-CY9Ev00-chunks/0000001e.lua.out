if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("GrabTheCostume") == 1 then
    _util.SetSuitcaseItemEnabled(_id.SuitCase_CrabCostume, true)
    _util.DisplayPopUp(_text.C2_CRAB_COSTUME_POPUP, "UI/Zoom/crabDisguise")
    _util.DelItem(_util.GetSelf())
    _util.SetSpawn(0, _util.GetSelf())
  else
    _util.AddMonologue(_text.C2_KLUTZYCOSTUME_ON_TABLE)
  end
end
