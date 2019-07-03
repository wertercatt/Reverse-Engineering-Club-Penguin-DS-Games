if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("GoGetStatue") == 1 then
      _util.AddNPCText(_text.C4_MS_JPG_1, _const.END_DIALOG, -1, 0)
    else
      _util.SetConversationCount(1000)
      _util.ActivateNpc(_id.C4_MineShackFlood_NPC_Gary, 0)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.SetConversationCount(1000)
    _util.AddNPCText(_text.C4_MS_JPG_1, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Rookie, 10)
  elseif _util.GetConversationCount() == 2 then
    if _util.GetVar("GotStatue") == 0 then
      _util.AddNPCText(_text.C4_MS_JPG_2, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Rookie, 5)
    else
      _util.AddNPCText(_text.C4_MS_JPG_1, _const.END_DIALOG, -1, 2)
    end
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C4_MS_JPG_3, _const.CHANGE_NPC, _id.C4_MineShackFlood_NPC_Dot, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C4_MS_JPG_4, _const.END_DIALOG, -1, 4)
  elseif _util.GetConversationCount() == 10 then
    _util.AddNPCText(_text.C4_GEYSER_DO_OVER_JPG, _const.END_DIALOG, -1, 10)
  elseif _util.GetConversationCount() == 11 then
    _util.AddNPCText(_text.C4_MS_JPG_4, _const.END_DIALOG, -1, 11)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG and _util.GetVar("GotStatue") == 4 then
  _util.SetVar("GotStatue", 5)
  _util.ClearCom()
  _util.SetupComNpc(_const.COM_DIRECTOR, _id.C4_CommandRoom_NPC_Director, 4)
  _util.LaunchCommunicator()
end
