if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 100 then
    _util.AddConversation(1228, 1229, -1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddDialog(1230, _const.CHANGE_DIALOG, 102)
    _util.AddItem(_id.M2C3_CrashedCart)
  elseif _util.GetConversationCount() == 102 then
    _util.AddDialog(1231, _const.CHANGE_NPC, _id.M2C3_CrashedCart, 100)
  elseif _util.GetConversationCount() == 103 then
    _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
    _util.AddConversation(1233, 1234, -1, _const.CHANGE_DIALOG, 104)
  elseif _util.GetConversationCount() == 104 then
    _util.AddConversation(1235, 1236, -1, _const.END_DIALOG, 0)
  elseif _util.IsSuitcaseItemEquipped(_id.SuitCase_GaryGlasses) and _util.GetVar("usedGlasses") == 0 then
    _util.AddDialog(1243, _const.END_DIALOG, 0)
    _util.SetVar("usedGlasses", 1)
  elseif _util.GetVar("haveFlash") == 0 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1237)
      _util.AddLoopingOption(1238, 1241, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1239, 1242, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1240, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4692, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("haveFlash") == 1 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1244)
      _util.AddLoopingOption(1245, 1248, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1246, 1249, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1247, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4693, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("haveFlash") == 2 then
    if _util.GetConversationCount() == 0 then
      _util.AddLoopingConv(1252)
      _util.AddLoopingOption(1253, 1256, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1254, 1257, _const.UPDATE_LOOP)
      _util.AddLoopingOption(1255, -1, _const.CHANGE_DIALOG, 1)
    elseif _util.GetConversationCount() == 1 then
      _util.AddDialog(4694, _const.END_DIALOG, 11)
    end
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.Inventory_Flashlight then
    _util.ActivateNpc(_util.GetSelf(), 0)
  elseif _util.GetSource() == _id.M2C3_Crowbar then
    _util.AddDialog(4627, _const.END_DIALOG, 0)
  end
end
