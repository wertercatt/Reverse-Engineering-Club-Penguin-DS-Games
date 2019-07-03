if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.M11_SKI_P1_GREET, _const.END_DIALOG, -1, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.M11_SKI_P1_GREET)
    _util.AddPlayerOption(_text.M11_SKI_A_1A, _const.CHANGE_DIALOG, -1, 2)
    _util.AddPlayerOption(_text.M11_SKI_A_1B, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.M11_SKI_P1_1A, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.SetConversationCount(12)
      _util.AddNPCText(_text.M11_SKI_P1_2A, _const.CHANGE_NPC, _id.M11_VillageNPCP2Marb, 4)
    else
      _util.SetConversationCount(12)
      _util.AddNPCText(_text.M11_SKI_P1_2A, _const.CHANGE_NPC, _id.M11_VillageNPCP2, 4)
    end
  elseif _util.GetConversationCount() == 4 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.SetConversationCount(12)
      _util.AddNPCText(_text.M11_SKI_P2_1A, _const.CHANGE_NPC, _id.M11_VillageNPCP3Marb, 5)
    else
      _util.SetConversationCount(12)
      _util.AddNPCText(_text.M11_SKI_P2_1A, _const.CHANGE_NPC, _id.M11_VillageNPCBrownP, 5)
    end
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.M11_SKI_BP_1, _const.CHANGE_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddNPCText(_text.M11_SKI_BP_2, _const.END_DIALOG, -1, 6)
    _util.SetVar("TalkedtoVillageNPCs", 1)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.M11_SKI_P1_1B, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetConversationCount() == 8 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.AddNPCText(_text.M11_SKI_P1_2B, _const.CHANGE_NPC, _id.M11_VillageNPCP2Marb, 9)
    else
      _util.AddNPCText(_text.M11_SKI_P1_2B, _const.CHANGE_NPC, _id.M11_VillageNPCP2, 9)
    end
  elseif _util.GetConversationCount() == 9 then
    _util.AddNPCText(_text.M11_SKI_P2_1B, _const.CHANGE_DIALOG, -1, 10)
  elseif _util.GetConversationCount() == 10 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.AddNPCText(_text.M11_SKI_P2_2B, _const.CHANGE_NPC, _id.M11_VillageNPCP3Marb, 5)
    else
      _util.AddNPCText(_text.M11_SKI_P2_2B, _const.CHANGE_NPC, _id.M11_VillageNPCBrownP, 5)
    end
  elseif _util.GetConversationCount() == 12 then
    if _util.GetVar("StopBroadcast") == 0 then
      if _util.GetSelf() == _id.M11_VillageNPCP1Marb then
        _util.AddNPCText(_text.M11_SKI2_P1_1, _const.CHANGE_NPC, _id.M11_VillageNPCP2Marb, 13)
      elseif _util.GetSelf() == _id.M11_VillageNPCP2Marb then
        _util.AddNPCText(_text.M11_SKI2_P1_1, _const.CHANGE_NPC, _id.M11_VillageNPCP1Marb, 13)
      end
    elseif _util.GetSelf() == _id.M11_VillageNPCP1Marb then
      _util.AddNPCText(_text.M11_SKI2_P1_1, _const.CHANGE_NPC, _id.M11_VillageNPCP2, 13)
    elseif _util.GetSelf() == _id.M11_VillageNPCP2Marb then
      _util.AddNPCText(_text.M11_SKI2_P1_1, _const.CHANGE_NPC, _id.M11_VillageNPCP1, 13)
    end
  elseif _util.GetConversationCount() == 13 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.AddNPCText(_text.M11_SKI2_P2_1, _const.CHANGE_NPC, _id.M11_VillageNPCP1Marb, 14)
    else
      _util.AddNPCText(_text.M11_SKI2_P2_1, _const.CHANGE_NPC, _id.M11_VillageNPCP1, 14)
    end
  elseif _util.GetConversationCount() == 14 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.AddNPCText(_text.M11_SKI2_P1_2, _const.CHANGE_NPC, _id.M11_VillageNPCP2Marb, 15)
    else
      _util.AddNPCText(_text.M11_SKI2_P1_2, _const.CHANGE_NPC, _id.M11_VillageNPCP2, 15)
    end
  elseif _util.GetConversationCount() == 15 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.AddNPCText(_text.M11_SKI2_P2_2, _const.CHANGE_NPC, _id.M11_VillageNPCP1Marb, 16)
    else
      _util.AddNPCText(_text.M11_SKI2_P2_2, _const.CHANGE_NPC, _id.M11_VillageNPCP1, 16)
    end
  elseif _util.GetConversationCount() == 16 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.SetConversationCount(12)
      _util.AddNPCText(_text.M11_SKI2_P1_3, _const.CHANGE_NPC, _id.M11_VillageNPCP2Marb, 17)
    else
      _util.SetConversationCount(12)
      _util.AddNPCText(_text.M11_SKI2_P1_3, _const.CHANGE_NPC, _id.M11_VillageNPCP2, 17)
    end
  elseif _util.GetConversationCount() == 17 then
    if _util.GetVar("StopBroadcast") == 0 then
      _util.SetConversationCount(12)
      _util.AddNPCText(_text.M11_SKI2_P2_3, _const.CHANGE_NPC, _id.M11_VillageNPCP3Marb, 18)
    else
      _util.SetConversationCount(12)
      _util.AddNPCText(_text.M11_SKI2_P2_3, _const.CHANGE_NPC, _id.M11_VillageNPCBrownP, 18)
    end
  elseif _util.GetConversationCount() == 18 then
    _util.AddNPCText(_text.M11_SKI2_BP, _const.END_DIALOG, -1, 18)
  elseif _util.GetConversationCount() == 19 then
    _util.AddNPCText(_text.M11_SKI4_BP_1, _const.CHANGE_NPC, _id.M11_VillageRookiePop, 9)
  elseif _util.GetConversationCount() == 20 then
    _util.AddNPCText(_text.M11_SKI2_P1_1, _const.CHANGE_NPC, _id.M11_VillageNPCBrownP, 22)
  elseif _util.GetConversationCount() == 21 then
    _util.AddNPCText(_text.M11_SKI2_P1_3, _const.END_DIALOG, -1, 21)
  elseif _util.GetConversationCount() == 22 then
    if _util.GetVar("ShutDownHerbert") == 0 then
      _util.AddNPCText(_text.M11_SKI2_P2_1, _const.END_DIALOG, -1, 23)
    else
      _util.AddNPCText(_text.M11_SKI2_P2_1, _const.END_DIALOG, -1, 24)
    end
  elseif _util.GetConversationCount() == 23 then
    _util.AddNPCText(_text.M11_SKI_P1_2A, _const.END_DIALOG, -1, 23)
  elseif _util.GetConversationCount() == 24 then
    _util.AddNPCText(_text.M11_SKI_P1_2B, _const.END_DIALOG, -1, 24)
  end
end
