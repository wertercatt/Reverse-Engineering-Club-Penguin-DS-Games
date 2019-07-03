if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.SPECIAL_CASE)
end
if _util.GetReason() == _const.SPECIAL_CASE then
  if _util.GetVar("Inventory_Goggles_Mode") == 0 then
    _util.IncVar("Inventory_Goggles_Mode")
    _util.SetOverlayColor(_const.OVERLAY_COLOR_ORANGE)
    if _util.GetVar("snakePuzzleNew") == 0 then
      _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPile_goggle", _id.M5_SnowPileNew)
    end
  else
    _util.DecVar("Inventory_Goggles_Mode")
    _util.SetOverlayColor(_const.OVERLAY_COLOR_NONE)
    if _util.GetVar("snakePuzzleNew") == 0 then
      _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPile", _id.M5_SnowPileNew)
    end
  end
  _util.ToggleGoggleItems(_util.GetVar("Inventory_Goggles_Mode"))
end
