if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.M11_NPC_GAMEPENGA_1, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.ChangeBaseAnim("NPC/M11/TownNPCs/Play2", _id.M11_Town_FindFourNPC, "talk")
    _util.AddNPCText(_text.M11_NPC_GAMEPENGB_1)
    _util.AddPlayerOption(_text.M11_NPC_GAMEPENGB_1A, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.ChangeBaseAnim("NPC/M11/TownNPCs/Look2", _id.M11_Town_FindFourNPC, "talk")
    _util.AddNPCText(_text.M11_NPC_GAMEPENGA_2, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.ChangeBaseAnim("NPC/M11/TownNPCs/Play", _id.M11_Town_FindFourNPC)
    _util.SetConversationCount(0, _id.M11_Town_FindFourNPC)
    _util.PopCamera()
  end
end
