if _util.GetActiveMission() == 4 and _util.GetVar("M8_snowFort") == 0 and _util.GetVar("townPaper") == 1 and _util.GetVar("M8_HerbertDockIntro") == 1 then
  _util.ActivateNpc(_id.M8_snowFort_Paper, 100)
end
if _util.GetActiveMission() == 2 then
  if _util.GetVar("snakePuzzleNew") == 1 then
    _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPileJackhammer", _id.M5_SnowPileNew)
  elseif 1 < _util.GetVar("snakePuzzleNew") then
    _util.ChangeBaseAnim("MissionObjects/SecretFur/snakeHole", _id.M5_SnowPileNew)
  elseif _util.GetVar("Inventory_Goggles_Mode") == 1 then
    _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPile_goggle", _id.M5_SnowPileNew)
  else
    _util.ChangeBaseAnim("MissionObjects/SecretFur/snowPile", _id.M5_SnowPileNew)
  end
end
