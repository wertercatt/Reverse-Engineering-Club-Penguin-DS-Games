if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 1 then
    _util.AddDialog(4705, _const.END_DIALOG, 0)
  elseif (not _util.IsSuitcaseItemEquipped(_id.SuitCase_FancyPants) or not _util.IsSuitcaseItemEquipped(_id.SuitCase_FancyHat) or not _util.IsSuitcaseItemEquipped(_id.SuitCase_FancyTie)) and (not _util.IsSuitcaseItemEquipped(_id.SuitCase_FancyDress) or not _util.IsSuitcaseItemEquipped(_id.SuitCase_FancyHair) or not _util.IsSuitcaseItemEquipped(_id.SuitCase_FancyNecklace)) then
    _util.AddLoopingConv(1414)
    _util.AddLoopingOption(1415, 1418, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1416, 1419, _const.UPDATE_LOOP)
    _util.AddLoopingOption(1417, -1, _const.CHANGE_DIALOG, 1)
  elseif _util.GetVar("M3C1_tiedJetpack") == 1 then
    _util.AddDialog(1420, _const.END_DIALOG, 0)
    _util.SetExitLocked(_id.Doors_Town2Night, false)
  else
    _util.AddDialog(4820, _const.END_DIALOG, 0)
  end
end
