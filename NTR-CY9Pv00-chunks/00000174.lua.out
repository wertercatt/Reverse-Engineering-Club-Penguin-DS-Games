if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("caughtCrab") == 1 then
      _util.AddLoopingConv(_text.M5_GADGETROOM_GARYN)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYN_Q1, -1, _const.CHANGE_DIALOG, 45)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYN_Q2, -1, _const.CHANGE_DIALOG, 44)
    elseif _util.GetVar("foundShadow") == 0 then
      _util.AddConversation(_text.M5_GADGETROOM_GARYL, _text.M5_GADGETROOM_GARYL_Q2, -1, _const.CHANGE_DIALOG, 39)
    else
      _util.AddLoopingConv(_text.M5_GADGETROOM_GARYL)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYM_Q1, -1, _const.CHANGE_DIALOG, 42)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYL_Q2, -1, _const.CHANGE_DIALOG, 39)
    end
  elseif _util.GetConversationCount() == 39 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYL_A2, _const.END_DIALOG, 40)
  elseif _util.GetConversationCount() == 40 then
    if _util.GetVar("caughtCrab") == 1 then
      _util.AddLoopingConv(_text.M5_GADGETROOM_GARYN)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYN_Q1, -1, _const.CHANGE_DIALOG, 45)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYN_Q2, -1, _const.CHANGE_DIALOG, 44)
    elseif _util.GetVar("foundShadow") == 1 then
      _util.AddLoopingConv(_text.M5_GADGETROOM_GARYM)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYM_Q1, -1, _const.CHANGE_DIALOG, 42)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYM_Q2, -1, _const.CHANGE_DIALOG, 41)
    else
      _util.AddLoopingConv(_text.M5_GADGETROOM_GARYM)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYM_Q2, -1, _const.CHANGE_DIALOG, 41)
    end
  elseif _util.GetConversationCount() == 41 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYM_A2, _const.END_DIALOG, 40)
  elseif _util.GetConversationCount() == 42 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYM_A1, _const.CHANGE_DIALOG, 43)
  elseif _util.GetConversationCount() == 43 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYM_B1, _const.END_DIALOG, 40)
  elseif _util.GetConversationCount() == 44 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYN_A2, _const.END_DIALOG, 40)
  elseif _util.GetConversationCount() == 45 then
    _util.AddConversation(_text.M5_GADGETROOM_GARYN_A1_2O, _text.M5_GADGETROOM_GARYO_Q1, -1, _const.CHANGE_DIALOG, 46)
  elseif _util.GetConversationCount() == 46 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYO_A1_2B, _const.CHANGE_DIALOG, 47)
  elseif _util.GetConversationCount() == 47 then
    _util.SetVar("HandOverKlutzy", 1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYO_B1, _const.END_DIALOG, 48)
  elseif _util.GetConversationCount() == 48 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYP, _const.END_DIALOG, 48)
  elseif _util.GetConversationCount() == 49 then
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryCrab")
    _util.AddDialog(_text.M5_GADGETROOM_GARYR2, _const.CHANGE_DIALOG, 50)
  elseif _util.GetConversationCount() == 50 then
    if _util.GetVar("tookFur") == 0 then
      _util.AddConversation(_text.M5_GADGETROOM_GARYR3, _text.M5_GADGETROOM_GARYR3_Q2, -1, _const.CHANGE_DIALOG, 51)
    else
      _util.AddLoopingConv(_text.M5_GADGETROOM_GARYR3)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYR3_Q1, -1, _const.CHANGE_DIALOG, 52)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYR3_Q2, -1, _const.CHANGE_DIALOG, 51)
    end
  elseif _util.GetConversationCount() == 51 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYR3_A2, _const.END_DIALOG, 53)
  elseif _util.GetConversationCount() == 52 then
    _util.SetVar("M5_toldGaryFoundFur", 1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYR3_A1, _const.END_DIALOG, 56)
  elseif _util.GetConversationCount() == 53 then
    if _util.GetVar("tookFur") == 0 then
      _util.AddConversation(_text.M5_GADGETROOM_GARYS, _text.M5_GADGETROOM_GARYS_A2ALT, -1, _const.CHANGE_DIALOG, 54)
    else
      _util.AddLoopingConv(_text.M5_GADGETROOM_GARYS)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYS_Q1, -1, _const.CHANGE_DIALOG, 55)
      _util.AddLoopingOption(_text.M5_GADGETROOM_GARYS_A2ALT, -1, _const.CHANGE_DIALOG, 54)
    end
  elseif _util.GetConversationCount() == 54 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYS_A2, _const.END_DIALOG, 53)
  elseif _util.GetConversationCount() == 55 then
    _util.SetVar("M5_toldGaryFoundFur", 1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYS_A1, _const.END_DIALOG, 56)
  elseif _util.GetConversationCount() == 56 then
    _util.SetVar("M5_toldGaryFoundFur", 1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYT, _const.END_DIALOG, 56)
  elseif _util.GetConversationCount() == 57 then
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryEscape")
    _util.AddDialog(_text.M5_GADGETROOM_GARY_OUTRO2, _const.CHANGE_DIALOG, 59)
  elseif _util.GetConversationCount() == 59 then
    _util.AddDialog(_text.M5_GADGETROOM_GARY_OUTRO3, _const.CHANGE_DIALOG, 60)
  elseif _util.GetConversationCount() == 60 then
    _util.TriggerDGamerHonor(_const.DG_HONOR_MYSTERY_BEGINS)
    _util.AddDialog(_text.M5_GADGETROOM_GARY_OUTRO4, _const.END_MISSION)
    _util.DisableSpyPodFunc(_const.FLAG_FLASHLIGHT)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M5_KluztyInventory and _util.GetVar("HandOverKlutzy") == 1 then
    _util.SetVar("M5_GaryHasCrab", 1)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryLook")
    _util.RemoveInventoryItem(_id.M5_KluztyInventory)
    _util.AddDialog(_text.M5_GADGETROOM_GARYR1, _const.CHANGE_DIALOG, 49)
  elseif _util.GetSource() == _id.M5_HotChocolate then
    _util.AddDialog(_text.M5_GADGETROOM_GARY_CHOCODROP, _const.END_DIALOG, _util.GetConversationCount())
  elseif _util.GetSource() == _id.M5_HotSauce then
    _util.AddDialog(_text.M5_GADGETROOM_GARY_HOTSAUCEDROP, _const.END_DIALOG, _util.GetConversationCount())
  elseif _util.GetSource() == _id.M5_InventoryFuel then
    _util.AddDialog(_text.M5_GADGETROOM_GARY_FUELDROP, _const.END_DIALOG, _util.GetConversationCount())
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetVar("hitBoiler") == 1 then
    if _util.GetComCount() == 0 then
      _util.AddComText(_text.M8_GADGETROOM_GARY_COM1)
      _util.AddComOption(_text.M8_GADGETROOM_GARY_COM1_Q1, _const.CHANGE_DIALOG, 1)
      _util.AddComOption(_text.M8_GADGETROOM_GARY_COM1_Q2, _const.CHANGE_DIALOG, 2)
    elseif _util.GetComCount() == 1 then
      _util.AddComText(_text.M8_GADGETROOM_GARY_COM1_A1, _const.END_DIALOG, 0)
    elseif _util.GetComCount() == 2 then
      _util.AddComText(_text.M8_GADGETROOM_GARY_COM1_A2, _const.END_DIALOG, 0)
    end
  elseif _util.GetVar("hitBoiler") == 2 then
    _util.AddComText(_text.M8_GADGETROOM_GARY_COM2, _const.END_DIALOG, 0)
  end
end
