if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C4_TM_DOT_1)
    _util.AddPlayerOption(_text.C4_TM_DOT_1A, _const.CHANGE_DIALOG, -1, 1)
    _util.AddPlayerOption(_text.C4_TM_DOT_1B, _const.CHANGE_NPC, _id.C4_MountainTop_NPC_JPG, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C4_TM_DOT_2, _const.CHANGE_NPC, _id.C4_MountainTop_NPC_JPG, 0)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C4_TM_DOT_3, _const.CHANGE_NPC, _id.C4_MountainTop_NPC_Rookie, 1)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C4_TM_DOT_4, _const.CHANGE_NPC, _id.C4_MountainTop_NPC_Rookie, 19)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C4_TM_DOT_5)
    _util.AddPlayerOption(_text.C4_TM_DOT_5A, _const.CHANGE_DIALOG, -1, 5)
    _util.AddPlayerOption(_text.C4_TM_DOT_5B, _const.CHANGE_DIALOG, -1, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C4_TM_DOT_6, _const.END_DIALOG, -1, 5)
  end
end
