if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED and _util.GetVar("M1C3_uberVariable") < 6 then
  if _util.GetVar("M1C3_afterSoup") == 0 then
    _util.AddMonologue(583)
  elseif _util.GetVar("M1C3_uberVariable") == 5 and _util.GetVar("M1C3_afterSoup") == 1 then
    _util.DisplayPopUp(297, "UI/Zoom/ProBoard")
    _util.SetVar("M1C3_afterSoup", 2)
    _util.SetVar("M1C3_gotProBoard", 1)
    _util.ShowMap()
    _util.SetSuitcaseItemEnabled(_id.SuitCase_ProBoard, true)
    _util.SetExitLocked(_id.Doors_Lodge2SkiVillage, false)
    _util.DelItem(_util.GetSelf())
  end
end
