if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
  _util.AddInterest(_const.ITEM_DROPPED)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C2_CR_DIR_1, _const.CHANGE_NPC, _id.C2_CR_Gary, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.ActivateNpc(_id.C2_CR_Gary, 4)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C2_CR_DIR_2)
    _util.AddPlayerOption(_text.C2_CR_A_1A, _const.CHANGE_DIALOG, -1, 3)
    _util.AddPlayerOption(_text.C2_CR_A_1B, _const.CHANGE_DIALOG, -1, 4)
    _util.AddPlayerOption(_text.C2_CR_A_1C, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C2_CR_DIR_3, _const.CHANGE_NPC, _id.C2_CR_Gary, 2)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C2_CR_DIR_4, _const.CHANGE_NPC, _id.C2_CR_Gary, 3)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C2_CR_DIR_5)
    _util.AddPlayerOption(_text.C2_CR_A_2A, _const.CHANGE_DIALOG, -1, 6)
    _util.AddPlayerOption(_text.C2_CR_A_2B, _const.CHANGE_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.AddNPCText(_text.C2_CR_DIR_6, _const.CHANGE_NPC, _id.C2_CR_Gary, 5)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.C2_CR_DIR_7, _const.CHANGE_NPC, _id.C2_CR_Gary, 6)
  elseif _util.GetConversationCount() == 8 then
    _util.AddNPCText(_text.C2_CR_DIR_8, _const.CHANGE_NPC, _id.C2_CR_Dot, 1)
  elseif _util.GetConversationCount() == 9 then
    _util.AddNPCText(_text.C2_CR_DIR_9, _const.CHANGE_NPC, _id.C2_CR_Gary, 9)
  elseif _util.GetConversationCount() == 10 then
    _util.AddNPCText(_text.C2_CR_DIR_10, _const.CHANGE_DIALOG, -1, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddNPCText(_text.C2_CR_DIR_CHECK_FOR_CLUES, _const.CHANGE_DIALOG, -1, 13)
  elseif _util.GetConversationCount() == 13 then
    _util.SetVar("C2_AskQues", 1)
    _util.AddNPCText(_text.C2_CR_DIR_13)
    _util.AddPlayerOption(_text.C2_CR_A_9A, _const.CHANGE_DIALOG, -1, 17)
    _util.AddPlayerOption(_text.C2_CR_A_9B, _const.CHANGE_DIALOG, -1, 19)
    _util.AddPlayerOption(_text.C2_CR_A_9C, _const.CHANGE_DIALOG, -1, 20)
  elseif _util.GetConversationCount() == 14 then
    _util.AddNPCText(_text.C2_CR_DIR_14, _const.CHANGE_NPC, _id.C2_CR_Gary, 16)
  elseif _util.GetConversationCount() == 15 then
    _util.AddNPCText(_text.C2_CR_DIR_15, _const.CHANGE_DIALOG, -1, 16)
  elseif _util.GetConversationCount() == 16 then
    _util.AddNPCText(_text.C2_CR_DIR_16)
    _util.AddPlayerOption(_text.C2_CR_A_9A, _const.CHANGE_DIALOG, -1, 17)
    _util.AddPlayerOption(_text.C2_CR_A_9B, _const.CHANGE_DIALOG, -1, 19)
    _util.AddPlayerOption(_text.C2_CR_A_9C, _const.CHANGE_DIALOG, -1, 20)
  elseif _util.GetConversationCount() == 17 then
    _util.AddNPCText(_text.C2_CR_DIR_17, _const.CHANGE_DIALOG, -1, 18)
  elseif _util.GetConversationCount() == 18 then
    _util.AddObjective(_text.C2_OBJ2)
    _util.AddNPCText(_text.C2_CR_DIR_18, _const.CHANGE_NPC, _id.C2_CR_Gary, 17)
  elseif _util.GetConversationCount() == 19 then
    _util.ActivateNpc(_id.C2_CR_Dot, 52)
  elseif _util.GetConversationCount() == 20 then
    _util.ActivateNpc(_id.C2_CR_Gary, 11)
  elseif _util.GetConversationCount() == 50 then
    _util.AddNPCText(_text.C2_CR_IDLE_CRAB_DIR, _const.END_DIALOG, -1, 50)
  elseif _util.GetConversationCount() == 60 then
    _util.AddNPCText(_text.C2_CR_IDLE_CAM_DIR, _const.END_DIALOG, -1, 60)
  elseif _util.GetConversationCount() == 100 then
    _util.AddNPCText(_text.C2_END_DIR_1, _const.CHANGE_DIALOG, 101)
  elseif _util.GetConversationCount() == 101 then
    _util.AddNPCText(_text.C2_END_DIR_2, _const.END_DIALOG, 102)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.C2_Camera and _util.GetVar("C2_Event") < _id.C2_Briefed then
  _util.AddNPCText(_text.C2_CR_IDLE_PHOTO_DIR, _const.END_DIALOG, -1, _util.GetConversationCount())
end
if _util.GetReason() == _const.AFTER_DIALOG and _util.GetConversationCount() == 102 then
  _util.TriggerDGamerUnlockable(_const.DG_UNLOCKABLE_HERBERT_SHIRT)
  _util.TriggerDGamerUnlockable(_const.DG_UNLOCKABLE_HERBERT_HAT)
  _util.TriggerDGamerUnlockable(_const.DG_UNLOCKABLE_KLUTSY_HAT)
  _util.TriggerDGamerHonor(_const.DG_HONOR_MASTER_OF_DISGUISE)
  _util.SetSuitcaseItemEnabled(_id.SuitCase_CrabCostume, false)
  _util.ShowMap()
  _util.EndMission()
end
