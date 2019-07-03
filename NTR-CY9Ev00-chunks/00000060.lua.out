if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
  _util.AddInterest(_const.COMMUNICATOR)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/Gary")
    _util.EnableSpyPodFunc(_const.FLAG_FLASHLIGHT)
    _util.AddLoopingConv(_text.M5_GADGETROOM_INTRO)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYA_Q1, -1, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYA_Q2, -1, _const.CHANGE_DIALOG, 1)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYA_Q3, -1, _const.CHANGE_DIALOG, 4)
  elseif _util.GetConversationCount() == 1 then
    _util.SetVar("M5_Gery_Anim_returnToWork", 1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYA_A2, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/Gary")
    _util.AddLoopingConv(_text.M5_GADGETROOM_INTRO2)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYA_Q1_2, -1, _const.CHANGE_DIALOG, 4)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYA_Q2_2, -1, _const.CHANGE_DIALOG, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.SetVar("M5_Gery_Anim_returnToWork", 1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYA_A2_2, _const.END_DIALOG, 2)
  elseif _util.GetConversationCount() == 4 then
    _util.SetVar("M5_Gary_FurConversationStarted", 1)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryPoint")
    _util.AddDialog(_text.M5_GADGETROOM_GARYA_2B, _const.CHANGE_DIALOG, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/Gary")
    _util.AddLoopingConv(_text.M5_GADGETROOM_GARYB)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYB_Q1, -1, _const.CHANGE_DIALOG, 6)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYB_Q2, -1, _const.CHANGE_DIALOG, 7)
  elseif _util.GetConversationCount() == 6 then
    _util.SetObjective(_text.M5_OBJ0)
    _util.AddObjective(_text.M5_OBJ0)
    _util.AddSubObjective(_text.M5_OBJ0, _text.M5_0SUBOBJ1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYB_A1, _const.END_DIALOG, 9)
  elseif _util.GetConversationCount() == 7 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYB_A2_B, _const.CHANGE_DIALOG, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.SetObjective(_text.M5_OBJ0)
    _util.AddObjective(_text.M5_OBJ0)
    _util.AddDialog(_text.M5_GADGETROOM_GARYB_B, _const.END_DIALOG, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddLoopingConv(_text.M5_GADGETROOM_GARYC)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYC_Q1, -1, _const.CHANGE_DIALOG, 10)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYC_Q2, -1, _const.CHANGE_DIALOG, 11)
  elseif _util.GetConversationCount() == 10 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYC_A1, _const.END_DIALOG, 9)
  elseif _util.GetConversationCount() == 11 then
    if _util.GetVar("M5_Gary_doObviousHint") == 1 then
      _util.AddDialog(_text.M5_GADGETROOM_GARYC_B2, _const.END_DIALOG, 9)
    else
      _util.AddDialog(_text.M5_GADGETROOM_GARYC_A2_2B, _const.CHANGE_DIALOG, 12)
    end
  elseif _util.GetConversationCount() == 12 then
    _util.SetVar("M5_Gary_doObviousHint", 1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYC_B1, _const.END_DIALOG, 9)
  elseif _util.GetConversationCount() == 13 then
    _util.MarkSubObjComplete(_text.M5_OBJ0, _text.M5_0SUBOBJ1)
    _util.AddSubObjective(_text.M5_OBJ0, _text.M5_0SUBOBJ2)
    _util.SetObjective(_text.M5_0SUBOBJ1)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryExcited")
    _util.AddDialog(_text.M5_GADGETROOM_GARYD1, _const.CHANGE_DIALOG, 14)
  elseif _util.GetConversationCount() == 14 then
    _util.SetVar("M5_Gary_Anim_giveFur", 1)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryFur")
    _util.AddDialog(_text.M5_GADGETROOM_GARYD2, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 15 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYE, _const.END_DIALOG, 15)
  elseif _util.GetConversationCount() == 16 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYF1, _const.CHANGE_DIALOG, 17)
  elseif _util.GetConversationCount() == 17 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYF2, _const.CHANGE_DIALOG, 18)
  elseif _util.GetConversationCount() == 18 then
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryPoint2")
    _util.AddDialog(_text.M5_GADGETROOM_GARYF3, _const.CHANGE_DIALOG, 19)
  elseif _util.GetConversationCount() == 19 then
    _util.SetVar("M5_Gary_MissionAccepted", 1)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryNoFur")
    _util.AddLoopingConv(_text.M5_GADGETROOM_GARYF4)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYF_Q1, -1, _const.CHANGE_DIALOG, 20)
    _util.AddLoopingOption(_text.M5_GADGETROOM_GARYF_Q2, -1, _const.CHANGE_DIALOG, 21)
  elseif _util.GetConversationCount() == 20 then
    _util.SetObjective(_text.M5_OBJ1)
    _util.AddObjective(_text.M5_OBJ1)
    _util.AddSubObjective(_text.M5_OBJ1, _text.M5_1SUBOBJ3)
    _util.AddSubObjective(_text.M5_OBJ1, _text.M5_1SUBOBJ4)
    _util.AddSubObjective(_text.M5_OBJ1, _text.M5_1SUBOBJ5)
    _util.AddDialog(_text.M5_GADGETROOM_GARYF_A1, _const.END_DIALOG, 22)
  elseif _util.GetConversationCount() == 21 then
    _util.SetObjective(_text.M5_OBJ1)
    _util.AddObjective(_text.M5_OBJ1)
    _util.AddSubObjective(_text.M5_OBJ1, _text.M5_1SUBOBJ3)
    _util.AddSubObjective(_text.M5_OBJ1, _text.M5_1SUBOBJ4)
    _util.AddSubObjective(_text.M5_OBJ1, _text.M5_1SUBOBJ5)
    _util.AddDialog(_text.M5_GADGETROOM_GARYF_A2, _const.END_DIALOG, 22)
  elseif _util.GetConversationCount() == 22 then
    if _util.GetVar("hotTaken") == 0 or _util.GetVar("fuelTaken") == 0 or _util.GetVar("hotCocoaTaken") == 0 then
      _util.SetObjective(_text.M5_OBJ1)
      if _util.GetVar("happeningsFound") == 0 then
        _util.AddConversation(_text.M5_GADGETROOM_GARYG, _text.M5_GADGETROOM_GARYG_Q1, -1, _const.CHANGE_DIALOG, 23)
      else
        _util.AddLoopingConv(_text.M5_GADGETROOM_GARYG)
        _util.AddLoopingOption(_text.M5_GADGETROOM_GARYG_Q1, -1, _const.CHANGE_DIALOG, 23)
        _util.AddLoopingOption(_text.M5_GADGETROOM_GARYG_Q2, -1, _const.CHANGE_DIALOG, 25)
      end
    else
      _util.ClearObjective()
      _util.SetObjective(_text.M5_OBJ2A)
      _util.AddObjective(_text.M5_OBJ2A)
      _util.MarkObjComplete(_text.M5_OBJ2)
      if _util.GetVar("happeningsFound") == 0 then
        _util.AddConversation(_text.M5_GADGETROOM_GARYH, _text.M5_GADGETROOM_GARYH_Q1, -1, _const.CHANGE_DIALOG, 26)
      else
        _util.SetVar("reportedCrab", 1)
        _util.AddLoopingConv(_text.M5_GADGETROOM_GARYH)
        _util.AddLoopingOption(_text.M5_GADGETROOM_GARYH_Q1, -1, _const.CHANGE_DIALOG, 26)
        _util.AddLoopingOption(_text.M5_GADGETROOM_GARYH_Q2, -1, _const.CHANGE_DIALOG, 28)
        _util.AddLoopingOption(_text.M5_UNUSED_7_GR_GARY1C, -1, _const.CHANGE_DIALOG, 50)
      end
    end
  elseif _util.GetConversationCount() == 50 then
    _util.AddDialog(_text.M5_UNUSED_6_GR_GARY2, _const.END_DIALOG, 22)
  elseif _util.GetConversationCount() == 23 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYG_A1_2B, _const.CHANGE_DIALOG, 24)
  elseif _util.GetConversationCount() == 24 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYG_B, _const.END_DIALOG, 22)
  elseif _util.GetConversationCount() == 25 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYG_A2, _const.END_DIALOG, 22)
  elseif _util.GetConversationCount() == 26 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYH_A1_2B, _const.CHANGE_DIALOG, 27)
  elseif _util.GetConversationCount() == 27 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYH_B1, _const.END_DIALOG, 31)
  elseif _util.GetConversationCount() == 28 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYH_A2_2B, _const.CHANGE_DIALOG, 29)
  elseif _util.GetConversationCount() == 29 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYH_B2_2C, _const.CHANGE_DIALOG, 30)
  elseif _util.GetConversationCount() == 30 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYH_C2, _const.END_DIALOG, 31)
  elseif _util.GetConversationCount() == 31 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYJ, _const.END_DIALOG, 31)
  elseif _util.GetConversationCount() == 32 then
    _util.SetSpawn(0, _id.M5_Gary_Gadget)
    _util.SetSpawn(1, _id.M5_Gary_GadgetEnd)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryWipers2")
    _util.SetVar("M5_Gary_Anim_stopPointing", 1)
    _util.SetVar("M5_Gary_FurConversationStarted", 1)
    _util.SetObjective(_text.M5_OBJ3)
    _util.AddObjective(_text.M5_OBJ3)
    _util.AddSubObjective(_text.M5_OBJ3, _text.M5_3SUBOBJ1)
    _util.AddDialog(_text.M5_GADGETROOM_GARYK1, _const.END_DIALOG, 100)
  elseif _util.GetConversationCount() == 100 then
    if _util.GetVar("reportedCrab") == 0 then
      _util.AddConversation(_text.M5_GADGETROOM_GARYK2, _text.M5_GADGETROOM_GARYK_Q1, -1, _const.CHANGE_DIALOG, 35)
    else
      _util.AddConversation(_text.M5_GADGETROOM_GARYK2, _text.M5_GADGETROOM_GARYK_Q2, -1, _const.CHANGE_DIALOG, 34)
    end
  elseif _util.GetConversationCount() == 34 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYK_A2, _const.END_DIALOG, 100)
  elseif _util.GetConversationCount() == 35 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYK_A1_2B, _const.CHANGE_DIALOG, 36)
  elseif _util.GetConversationCount() == 36 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYK_B1_2C, _const.CHANGE_DIALOG, 37)
  elseif _util.GetConversationCount() == 37 then
    _util.AddDialog(_text.M5_GADGETROOM_GARYK_C1, _const.END_DIALOG, 100)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  if _util.GetVar("M5_Gery_Anim_returnToWork") == 1 then
    _util.SetVar("M5_Gery_Anim_returnToWork", 0)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryWork")
    _util.SwitchState("", _util.GetSelf())
  end
  if _util.GetVar("M5_Gary_Anim_giveFur") == 1 then
    _util.AddInventoryItem(_id.M5_DirtyFur)
    _util.SetVar("M5_Gary_Anim_giveFur", 2)
    _util.SetVar("M5_Gary_GaveFur", 1)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryNoFur")
    _util.SwitchState("", _util.GetSelf())
  end
  if _util.GetVar("M5_Gary_Anim_stopPointing") == 1 then
    _util.SetVar("M5_Gary_Anim_stopPointing", 0)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryWipers")
    _util.SwitchState("", _util.GetSelf())
  end
end
if _util.GetReason() == _const.ITEM_DROPPED then
  if _util.GetSource() == _id.M5_KluztyInventory then
    _util.RemoveInventoryItem(_id.M5_KluztyInventory)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryLook")
    _util.AddDialog(_text.M5_GADGETROOM_GARYR1, _const.CHANGE_DIALOG, 49)
  elseif _util.GetSource() == _id.M5_HotChocolate then
    _util.AddDialog(_text.M5_GADGETROOM_GARY_CHOCODROP, _const.END_DIALOG, _util.GetConversationCount())
  elseif _util.GetSource() == _id.M5_HotSauce then
    _util.AddDialog(_text.M5_GADGETROOM_GARY_HOTSAUCEDROP, _const.END_DIALOG, _util.GetConversationCount())
  elseif _util.GetSource() == _id.M5_InventoryFuel or _util.GetSource() == _id.M5_FuelBeach then
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
