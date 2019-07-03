if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("FPMission_Started") == 0 then
    _util.OpenCatalog()
  else
    _util.AddMonologue(4330)
  end
end
