if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M3C3_GotOil") == 0 then
    _util.AddMonologue(1976)
    _util.SetVar("M3C3_FoundClues", 1)
  elseif _util.GetVar("M3C3_GotOil") == 1 then
    _util.AddMonologue(1977)
  end
end
