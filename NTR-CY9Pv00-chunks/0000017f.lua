if _util.GetActiveMission() == 2 and _util.GetReason() == _const.TOUCHED and _util.GetConversationCount() == 0 then
  _util.AddNPCText(_text.M5_NPC_TOWNPENG_1, _const.END_DIALOG, -1, 0)
end
if _util.GetActiveMission() == 9 and _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    if _util.GetVar("HerbertTakeOFF") == 0 then
      _util.AddNPCText(_text.C3_NPC_TOWN_1)
      _util.AddPlayerOption(_text.C3_NPC_TOWN_1A, _const.CHANGE_DIALOG, -1, 1)
    else
      _util.AddNPCText(_text.C3_NPC_TOWN_3)
      _util.AddPlayerOption(_text.C3_NPC_TOWN_A, _const.END_DIALOG, -1, 0)
    end
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C3_NPC_TOWN_2, _const.END_DIALOG, -1, 0)
  end
end
