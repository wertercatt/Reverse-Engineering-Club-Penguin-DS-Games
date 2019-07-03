if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.IsSuitcaseItemEquipped(_id.SuitCase_GaryGlasses) then
    if _util.GetConversationCount() == 0 then
      _util.AddConversation(884, 885, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(886, _const.END_DIALOG, 0)
    end
  elseif not _util.IsSuitcaseItemEquipped(_id.SuitCase_GaryGlasses) then
    if _util.GetConversationCount() == 0 and _util.GetVar("M2C1_glassesScanned") == 0 then
      _util.AddLoopingConv(869)
      _util.AddLoopingOption(871, 877, _const.UPDATE_LOOP)
      _util.AddLoopingOption(873, 879, _const.CHANGE_DIALOG, 1)
      _util.AddLoopingOption(875, -1, _const.CHANGE_DIALOG, 10)
    elseif _util.GetConversationCount() == 10 then
      _util.AddDialog(4673, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 1 then
      _util.AddLoopingConv(879)
      _util.AddLoopingOption(881, 882, _const.CHANGE_DIALOG, 2)
      _util.AddLoopingOption(883, -1, _const.CHANGE_DIALOG, 11)
    elseif _util.GetConversationCount() == 11 then
      _util.AddDialog(4674, _const.END_DIALOG, 0)
    elseif _util.GetConversationCount() == 2 then
      _util.AddConversation(882, -1, -1, _const.END_DIALOG, 0)
    elseif _util.GetVar("M2C1_glassesScanned") == 1 and _util.GetVar("M2C1_haveDuster") == 0 then
      if _util.GetConversationCount() < 3 then
        _util.AddDialog(887, _const.CHANGE_DIALOG, 3)
      elseif _util.GetConversationCount() == 3 then
        _util.AddConversation(888, 889, -1, _const.END_DIALOG, 0)
      end
    elseif _util.GetVar("M2C1_haveDuster") == 1 then
      if _util.GetConversationCount() < 5 then
        _util.AddConversation(890, 891, -1, _const.CHANGE_DIALOG, 5)
      elseif _util.GetConversationCount() == 5 then
        _util.AddConversation(892, 893, -1, _const.CHANGE_DIALOG, 6)
      elseif _util.GetConversationCount() == 6 then
        _util.AddConversation(894, 895, -1, _const.END_DIALOG, 4)
      end
    elseif _util.GetVar("M2C1_spypodDuster") == 1 then
      if _util.GetConversationCount() < 8 then
        _util.AddLoopingConv(897)
        _util.AddLoopingOption(899, 902, _const.UPDATE_LOOP)
        _util.AddLoopingOption(900, 903, _const.CHANGE_DIALOG, 8)
        _util.AddLoopingOption(901, -1, _const.END_DIALOG, 7)
      elseif _util.GetConversationCount() == 8 then
        _util.AddConversation(903, 904, -1, _const.END_DIALOG, 7)
      end
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.Inventory_Duster then
  _util.AddDialog(896, _const.END_DIALOG, 0)
end
if _util.GetReason() == _const.COLLIDED then
end
