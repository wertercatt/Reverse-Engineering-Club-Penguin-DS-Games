if _util.GetReason() == _const.CREATED then
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C4_MS_GARY_1)
    _util.AddPlayerOption(_text.C4_MS_GARY_1A, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Rookie, 1)
  elseif _util.GetConversationCount() == 1 then
    if _util.GetVar("MSFloodConversation") == 1 then
      _util.AddNPCText(_text.C4_MS_GARY_2, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Dot, 2)
      _util.SetVar("MSFloodConversation", 2)
    else
      _util.AddNPCText(_text.C4_MS_GARY_2, _const.END_DIALOG, -1, 1)
    end
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C4_MS_GARY_3, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C4_MS_GARY_4)
    _util.AddPlayerOption(_text.C4_MS_GARY_4A, _const.CHANGE_DIALOG, -1, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C4_MS_GARY_5, _const.CHANGE_DIALOG, -1, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C4_MS_GARY_6)
    _util.AddPlayerOption(_text.C4_MS_GARY_6A, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Rookie, 4)
  elseif _util.GetConversationCount() == 6 then
    _util.AddNPCText(_text.C4_MS_GARY_7, _const.END_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.C4_MS_GARY_8)
    _util.AddPlayerOption(_text.C4_MS_GARY_8A, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetConversationCount() == 8 then
    _util.AddNPCText(_text.C4_MS_GARY_9, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Dot, 5)
  elseif _util.GetConversationCount() == 10 then
    _util.AddNPCText(_text.C4_MS_GARY_FREEZE, _const.END_DIALOG, -1, 10)
  elseif _util.GetConversationCount() == 20 then
    _util.AddNPCText(_text.C4_GEYSER_DO_OVER_GARY, _const.END_DIALOG, -1, 20)
  end
end
