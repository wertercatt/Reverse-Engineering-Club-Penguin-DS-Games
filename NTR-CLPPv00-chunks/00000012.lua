if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 100 then
    _util.AddConversation(1202, 1203, -1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddDialog(1204, _const.CHANGE_DIALOG, 102)
    _util.AddItem(_id.M2C3_CrashedCart)
  elseif _util.GetConversationCount() == 102 then
    _util.AddDialog(1205, _const.CHANGE_NPC, _id.M2C3_CrashedCart, 100)
  elseif _util.GetConversationCount() == 103 then
    _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    _util.AddConversation(1207, 1208, -1, _const.CHANGE_DIALOG, 104)
  elseif _util.GetConversationCount() == 104 then
    _util.AddConversation(1209, 1210, -1, _const.END_DIALOG, 0)
  elseif _util.IsSuitcaseItemEquipped(_id.SuitCase_GaryGlasses) and _util.GetVar("usedGlasses") == 0 then
    _util.AddDialog(1217, _const.END_DIALOG, 0)
    _util.SetVar("usedGlasses", 1)
  elseif _util.GetVar("haveFlash") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1211)
      _util.AddLoopingOption(1212, 1215, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1213, 1216, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1214, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4384, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("haveFlash") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1218)
      _util.AddLoopingOption(1219, 1222, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1220, 1223, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1221, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4385, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("haveFlash") == 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1225)
      _util.AddLoopingOption(1226, 1229, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1227, 1230, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1228, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4386, _const.END_DIALOG, 11)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_Flashlight then
    _util.ActivateNpc(_util.GetSelf(), 0)
  elseif _util.GetSource() == _id.M2C3_Crowbar then
    _util.AddDialog(4320, _const.END_DIALOG, 0)
  end
end
