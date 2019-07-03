if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetVar("M2C1_DotIntroComplete") == 1 and _util.GetConversationCount() == 0 then
    _util.AddDialog(754, _const.END_DIALOG, 0)
  else
    if _util.GetConversationCount() == 0 then
      _util.AddDialog(755, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddLoopingConv(761)
      _util.AddLoopingOption(763, 764, _const.CHANGE_DIALOG, 2)
      _util.AddLoopingOption(760, -1, _const.CHANGE_DIALOG, 11)
      _util.SetVar("M2C1_DotIntroComplete", 1)
      if _util.GetVar("M2C1_dossierFound") == 1 and _util.GetVar("M2C1_JetPackGuyIntroComplete") == 1 then
        _util.SetExitLocked(_id.Doors_Command2HQ, false)
        _util.ShowMap()
      end
    elseif _util.GetConversationCount() == 11 then
      _util.AddDialog(4661, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(764, 765, -1, _const.CHANGE_DIALOG, 3)
    elseif _util.GetConversationCount() == 3 then
      _util.AddDialog(766, _const.END_DIALOG, 0)
    end
    if _util.GetConversationCount() == 100 then
      _util.AddDialog(740, _const.CHANGE_NPC, _id.M2C1_JPG_CR, 100)
    elseif _util.GetConversationCount() == 101 then
      _util.AddDialog(742, _const.CHANGE_NPC, _id.M2C1_Director, 102)
    elseif _util.GetConversationCount() == 102 then
      _util.SetConversationCount(0)
      _util.AddDialog(748, _const.CHANGE_NPC, _id.M2C1_Director, 106)
    end
    if _util.GetConversationCount() == 200 then
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.AddLoopingConv(756)
      _util.AddLoopingOption(758, 761, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(759, 762, _const.UPDATE_LOOP)
      _util.AddLoopingOption(760, -1, _const.CHANGE_DIALOG, 201)
    elseif _util.GetConversationCount() == 201 then
      _util.AddDialog(4661, _const.END_DIALOG, 0)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_Dossier then
  _util.SetVar("M2C1_gaveDossierDot", 1)
  print("**MADE IT HERE**")
  _util.ActivateNpc(_id.M2C1_Dot_CR, 200)
end
