if _util.GetActiveMission() == 4 and _util.GetVar("townPaper") == 0 and _util.GetVar("M8_HerbertDockIntro") == 1 then
  _util.SetExitLocked(_id.M8_UGDoortoBoiler, true)
  _util.SetExitLocked(_id.M8_TownToGiftShop, true)
  _util.AddSubObjective(_text.M8_OBJ2, _text.M8_OBJ_2A)
  _util.ActivateNpc(_id.M8_TownTremors_PaperL, 100)
end
