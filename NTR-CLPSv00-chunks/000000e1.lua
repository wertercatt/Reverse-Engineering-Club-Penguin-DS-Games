if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M2C1_JetPackGuyIntroComplete") == 1 and _util.GetConversationCount() == 0 then
    _util.AddDialog(751, _const.END_DIALOG, 0)
  else
    if _util.GetConversationCount() == 0 then
      _util.AddDialog(752, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddLoopingConv(759)
      _util.AddLoopingOption(760, 761, _const.UPDATE_LOOP)
      _util.AddLoopingOption(762, 763, _const.UPDATE_LOOP)
      _util.AddLoopingOption(764, -1, _const.CHANGE_DIALOG, 2)
    elseif _util.GetConversationCount() == 2 then
      _util.AddDialog(4355, _const.END_DIALOG, 0)
    end
    if _util.GetConversationCount() == 100 then
      _util.SetConversationCount(0)
      _util.AddDialog(723, _const.CHANGE_NPC, _id.M2C1_Dot_CR, 101)
    end
    if _util.GetConversationCount() == 200 then
      _util.AddDialog(753, _const.CHANGE_DIALOG, 201)
    elseif _util.GetConversationCount() == 201 then
      _util.AddLoopingConv(754)
      _util.AddLoopingOption(755, 758, _const.UPDATE_LOOP)
      _util.AddLoopingOption(756, 759, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(757, -1, _const.CHANGE_DIALOG, 202)
      _util.SetVar("M2C1_JetPackGuyIntroComplete", 1)
      if _util.GetVar("M2C1_dossierFound") == 1 and _util.GetVar("M2C1_DotIntroComplete") == 1 then
        _util.SetExitLocked(_id.Doors_Command2HQ, False)
        _util.ShowMap()
      end
    elseif _util.GetConversationCount() == 202 then
      _util.AddDialog(4354, _const.END_DIALOG, 0)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_Dossier then
  _util.SetVar("M2C1_gaveDossierJPG", 1)
  _util.ActivateNpc(_util.GetSelf(), 200)
end
