if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C1_END_DIR_1)
    _util.AddPlayerOption(_text.C1_END_A_1A, _const.CHANGE_DIALOG, -1, 2)
    _util.AddPlayerOption(_text.C1_END_A_1B, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C1_END_DIR_2, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C1_END_DIR_3, _const.CHANGE_DIALOG, -1, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C1_END_DIR_4)
    _util.AddPlayerOption(_text.C1_END_A_4, _const.CHANGE_DIALOG, -1, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C1_END_DIR_5, _const.CHANGE_NPC, _id.M1_T5_Dot, 0)
  elseif _util.GetConversationCount() == 6 then
    _util.AddNPCText(_text.C1_END_DIR_6, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.C1_END_DIR_7, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddNPCText(_text.C1_END_DIR_8, _const.CHANGE_DIALOG, -1, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddNPCText(_text.C1_END_DIR_9)
    _util.AddPlayerOption(_text.C1_END_A_9A, _const.CHANGE_DIALOG, -1, 10)
    _util.AddPlayerOption(_text.C1_END_A_9B, _const.CHANGE_DIALOG, -1, 10)
  elseif _util.GetConversationCount() == 10 then
    _util.SetVar("C1_winHook", 1)
    _util.AddNPCText(_text.C1_END_DIR_10, _const.END_DIALOG, -1, 10)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG and _util.GetVar("C1_winHook") == 1 then
  _util.TriggerDGamerUnlockable(_const.DG_UNLOCKABLE_PURPLE_PUFFLE_HOODIE)
  _util.TriggerDGamerHonor(_const.DG_HONOR_TEAM_LEADER)
  _util.EndMission()
end
