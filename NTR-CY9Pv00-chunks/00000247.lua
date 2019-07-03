if _util.GetReason() == _const.CREATED then
  _util.AddInterest(_const.COMMUNICATOR)
  _util.AddInterest(_const.AFTER_DIALOG)
end
if _util.GetReason() == _const.TOUCHED then
  if _util.GetConversationCount() == 0 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_1)
    _util.AddPlayerOption(_text.C4_CR_DIRECTOR_1A, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetConversationCount() == 1 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_2, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetConversationCount() == 2 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_3, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetConversationCount() == 3 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_4, _const.CHANGE_DIALOG, -1, 4)
  elseif _util.GetConversationCount() == 4 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_5, _const.CHANGE_DIALOG, -1, 5)
  elseif _util.GetConversationCount() == 5 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_6)
    _util.AddPlayerOption(_text.C4_CR_DIRECTOR_6A, _const.CHANGE_DIALOG, -1, 6)
    _util.AddPlayerOption(_text.C4_CR_DIRECTOR_6B, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetConversationCount() == 6 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_7, _const.CHANGE_NPC, _id.C4_CommandRoom_NPC_JPG, 1)
  elseif _util.GetConversationCount() == 7 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_8, _const.CHANGE_NPC, _id.C4_CommandRoom_NPC_JPG, 1)
  elseif _util.GetConversationCount() == 8 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_9, _const.CHANGE_DIALOG, -1, 9)
  elseif _util.GetConversationCount() == 9 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_10)
    _util.AddPlayerOption(_text.C4_CR_DIRECTOR_10A, _const.CHANGE_NPC, _id.C4_CommandRoom_NPC_Rookie, 1)
  elseif _util.GetConversationCount() == 10 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_11, _const.CHANGE_DIALOG, -1, 11)
  elseif _util.GetConversationCount() == 11 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_12, _const.CHANGE_DIALOG, -1, 12)
  elseif _util.GetConversationCount() == 12 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_13, _const.CHANGE_DIALOG, -1, 13)
  elseif _util.GetConversationCount() == 13 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_14, _const.CHANGE_DIALOG, -1, 14)
  elseif _util.GetConversationCount() == 14 then
    _util.AddNPCText(_text.C4_CR_DIRECTOR_15)
    _util.AddPlayerOption(_text.C4_CR_DIRECTOR_15A, _const.CHANGE_NPC, _id.C4_CommandRoom_NPC_Rookie, 2)
  end
elseif _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetComCount() == 0 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_2)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_2A, _const.CHANGE_DIALOG, -1, 30)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_2B, _const.CHANGE_DIALOG, -1, 30)
  elseif _util.GetComCount() == 30 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_3, _const.CHANGE_DIALOG, -1, 31)
  elseif _util.GetComCount() == 31 then
    _util.AddNPCTextComm(_text.C4_COMM_DIRECTOR_1)
    _util.AddPlayerOptionComm(_text.C4_COMM_DIRECTOR_1A, _const.CHANGE_DIALOG, -1, 1)
    _util.AddPlayerOptionComm(_text.C4_COMM_DIRECTOR_1B, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetComCount() == 1 then
    _util.AddNPCTextComm(_text.C4_COMM_DIRECTOR_2)
    _util.AddPlayerOptionComm(_text.C4_COMM_DIRECTOR_2A, _const.CHANGE_DIALOG, -1, 2)
    _util.AddPlayerOptionComm(_text.C4_COMM_DIRECTOR_2B, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetComCount() == 2 then
    _util.AddNPCTextComm(_text.C4_COMM_DIRECTOR_3, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetComCount() == 3 then
    _util.SetVar("c4IntroProgression", 2)
    _util.AddNPCTextComm(_text.C4_COMM_DIRECTOR_4, _const.END_DIALOG, -1, 3)
  elseif _util.GetComCount() == 4 then
    _util.AddNPCTextComm(_text.C4_COMM_DIRECTOR_5, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetComCount() == 7 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_3, _const.CHANGE_DIALOG, -1, 9)
  elseif _util.GetComCount() == 9 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_5, _const.CHANGE_DIALOG, -1, 10)
  elseif _util.GetComCount() == 10 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_6)
    _util.AddPlayerOptionComm(_text.C4_CR_DIRECTOR_6A, _const.CHANGE_DIALOG, -1, 11)
    _util.AddPlayerOptionComm(_text.C4_CR_DIRECTOR_6B, _const.CHANGE_DIALOG, -1, 11)
  elseif _util.GetComCount() == 11 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_8, _const.CHANGE_DIALOG, -1, 12)
  elseif _util.GetComCount() == 12 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_9, _const.CHANGE_DIALOG, -1, 13)
  elseif _util.GetComCount() == 13 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_10)
    _util.AddPlayerOptionComm(_text.C4_CR_DIRECTOR_10A, _const.CHANGE_DIALOG, -1, 14)
  elseif _util.GetComCount() == 14 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_11, _const.CHANGE_DIALOG, -1, 15)
  elseif _util.GetComCount() == 15 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_12, _const.CHANGE_DIALOG, -1, 16)
  elseif _util.GetComCount() == 16 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_13, _const.CHANGE_DIALOG, -1, 17)
  elseif _util.GetComCount() == 17 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_14, _const.CHANGE_DIALOG, -1, 18)
  elseif _util.GetComCount() == 18 then
    _util.AddNPCTextComm(_text.C4_CR_DIRECTOR_15)
    _util.AddPlayerOptionComm(_text.C4_CR_DIRECTOR_15A, _const.CHANGE_DIALOG, -1, 19)
  elseif _util.GetComCount() == 19 then
    _util.TriggerDGamerUnlockable(_const.DG_UNLOCKABLE_EPF_2_HAT)
    _util.TriggerDGamerHonor(_const.DG_HONOR_CLUB_PENGUION_SAVER)
    _util.EndMission()
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  if _util.GetVar("c4IntroProgression") == 2 then
    _util.SetVar("c4IntroProgression", 3)
  end
  if _util.GetVar("GotStatue") == 5 then
    _util.SetVar("GotStatue", 6)
  end
end
