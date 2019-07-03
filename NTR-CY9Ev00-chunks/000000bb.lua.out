if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.ActivateNpc(_id.C4_MineShackFlood_NPC_Gary, 0)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C4_MS_HERBERT_1, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Dot, 1)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C4_MS_HERBERT_2, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C4_MS_HERBERT_3)
    _util.AddPlayerOption(_text.C4_MS_HERBERT_3A, _const.CHANGE_DIALOG, -1, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C4_MS_HERBERT_4, _const.CHANGE_DIALOG, -1, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C4_MS_HERBERT_5, _const.CHANGE_DIALOG, -1, 6)
  elseif _util.GetConversationCount() == 6 then
    _util.SetVar("GoGetStatue", 1)
    if _util.GetVar("MSFloodConversation") == 1 then
      _util.AddNPCText(_text.C4_MS_HERBERT_6)
      _util.MarkObjComplete(_text.C4_OBJ4)
      _util.AddObjective(_text.C4_4SUBOBJ1)
      _util.AddSubObjective(_text.C4_4SUBOBJ1, _text.C4_4SUBSUB1A)
      _util.AddPlayerOption(_text.C4_MS_HERBERT_6A, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Gary, 1)
    else
      _util.AddNPCText(_text.C4_MS_HERBERT_6, _const.END_DIALOG, -1, 6)
    end
  end
elseif _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetComCount() == 0 then
    _util.AddNPCTextComm(_text.C4_COMM_HERBERT_1, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetComCount() == 1 then
    _util.SetSpawn(1, _id.C4_MineShackFlood_Item_Statue)
    _util.SetVar("GotStatue", 1)
    _util.AddObjective(_text.C4_4SUBOBJ4)
    _util.AddNPCTextComm(_text.C4_COMM_HERBERT_2, _const.END_DIALOG, -1, 1)
  elseif _util.GetComCount() == 2 then
    _util.AddNPCTextComm(_text.C4_COMM_HERBERT_3, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetComCount() == 3 then
    _util.SetVar("ByeHerbert", 1)
    _util.MarkObjComplete(_text.C4_4SUBOBJ4)
    _util.AddNPCTextComm(_text.C4_COMM_HERBERT_4, _const.END_DIALOG, -1, 2)
  end
end
