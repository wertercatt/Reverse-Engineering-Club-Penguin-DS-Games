local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
function L1_1()
  if _util.GetVar("SearchtheSkiVillage") == 0 then
    _util.AddComOption(_text.C2_COMM_A_2C, _const.CHANGE_DIALOG, 14)
  end
  if _util.GetVar("SearchtheBeacon") == 2 then
    _util.AddComOption(_text.C2_COMM_A_2A, _const.CHANGE_DIALOG, 9)
  elseif _util.GetVar("SearchtheBeacon") == 0 then
    _util.AddComOption(_text.C2_COMM_A_2A, _const.CHANGE_DIALOG, 6)
  end
  if _util.GetVar("SearchtheDocks") == 2 then
    _util.AddComOption(_text.C2_COMM_A_2B, _const.CHANGE_DIALOG, 11)
  elseif _util.GetVar("SearchtheDocks") == 0 then
    _util.AddComOption(_text.C2_COMM_A_2B, _const.CHANGE_DIALOG, 13)
  end
end
if _util.GetReason() == _const.TOUCHED then
  if L0_0 == 0 then
    _util.AddNPCText(_text.C2_CR_ROOKIE_GREET_REM, _const.END_DIALOG, 0)
  elseif L0_0 == 50 then
    _util.AddNPCText(_text.C2_CR_IDLE_CRAB_ROOK, _const.END_DIALOG, -1, 50)
  elseif L0_0 == 60 then
    _util.AddNPCText(_text.C2_CR_IDLE_CAM_ROOK, _const.END_DIALOG, -1, 60)
  elseif L0_0 == 70 then
    _util.AddNPCText(_text.C2_CR_IDLE_END_ROOK, _const.END_DIALOG, -1, 70)
  elseif L0_0 == 100 then
    _util.AddNPCText(_text.C2_END_ROOK_1, _const.CHANGE_NPC, _id.C2_CR_Director, 100)
  end
end
if _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetComCount() == 0 then
    _util.AddComText(_text.C2_COMM_ROOK_9)
    _util.AddComOption(_text.C2_COMM_A_7, _const.CHANGE_DIALOG, 1)
  elseif _util.GetComCount() == 1 then
    _util.AddComText(_text.C2_COMM_ROOK_10)
    _util.AddComOption(_text.C2_COMM_A_8, _const.CHANGE_DIALOG, 2)
  elseif _util.GetComCount() == 2 then
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_11, _const.END_DIALOG, -1, 0)
  elseif _util.GetComCount() == 3 then
    _util.AddComText(_text.C2_COMM_ROOK_12)
    _util.AddComOption(_text.C2_COMM_A_9, _const.CHANGE_DIALOG, 4)
    _util.AddComOption(_text.C2_COMM_A_10, _const.CHANGE_DIALOG, 4)
  elseif _util.GetComCount() == 4 then
    _util.AddComText(_text.C2_COMM_ROOK_13)
    _util.AddComOption(_text.C2_COMM_A_11, _const.END_DIALOG, 3)
  elseif _util.GetComCount() == 5 then
    if _util.GetVar("SearchtheDocks") == 0 or _util.GetVar("SearchtheBeacon") == 0 or _util.GetVar("SearchtheSkiVillage") == 0 or _util.GetVar("SearchtheDocks") == 2 or _util.GetVar("SearchtheBeacon") == 2 then
      _util.AddNPCTextComm(_text.C2_COMM_ROOK_1)
      L1_1()
    else
      _util.AddNPCTextComm(_text.C2_COMM_JPG_8, _const.END_DIALOG, -1, 5)
    end
  elseif _util.GetComCount() == 6 then
    _util.SetVar("SearchtheBeacon", 1)
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_2, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetComCount() == 13 then
    _util.SetVar("SearchtheDocks", 1)
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_2, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetComCount() == 14 then
    _util.SetVar("SearchtheSkiVillage", 1)
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_2, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetComCount() == 7 then
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_3, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetComCount() == 8 then
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_4, _const.END_DIALOG, -1, 5)
  elseif _util.GetComCount() == 9 then
    _util.SetVar("SearchtheBeacon", 3)
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_5, _const.CHANGE_DIALOG, -1, 10)
  elseif _util.GetComCount() == 10 then
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_6, _const.END_DIALOG, -1, 5)
  elseif _util.GetComCount() == 11 then
    _util.SetVar("SearchtheDocks", 3)
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_7, _const.CHANGE_DIALOG, -1, 12)
  elseif _util.GetComCount() == 12 then
    _util.AddNPCTextComm(_text.C2_COMM_ROOK_8, _const.END_DIALOG, -1, 5)
  end
end
if _util.GetReason() == _const.ITEM_DROPPED and _util.GetSource() == _id.C2_Camera and _util.GetVar("C2_Event") < _id.C2_Briefed then
  _util.AddNPCText(_text.C2_CR_IDLE_PHOTO_ROOK, _const.END_DIALOG, -1, _util.GetConversationCount())
end
