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
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
function L1_1()
  if _util.GetVar("C4_GQA") ~= 1 then
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_9A, _const.CHANGE_DIALOG, -1, 9)
  end
  if _util.GetVar("C4_GQB") ~= 1 then
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_9B, _const.CHANGE_DIALOG, -1, 12)
  end
  if (_util.GetVar("C4_GQA") == 1 or _util.GetVar("C4_GQB") == 1) and _util.GetVar("C4_GQC") ~= 1 then
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_9C, _const.CHANGE_DIALOG, -1, 15)
  end
  _util.AddPlayerOptionComm(_text.C4_COMM_GARY_9D, _const.CHANGE_DIALOG, -1, 17)
end
if _util.GetReason() == _const.TOUCHED then
  if L0_0 == 0 then
    _util.ActivateNpc(_id.C4_CommandRoom_NPC_Director, 0)
  elseif L0_0 == 1 then
    _util.AddNPCText(_text.C4_CR_GARY_1)
  end
elseif _util.GetReason() == _const.COMMUNICATOR then
  if _util.GetComCount() == 0 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_1)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_1A, _const.CHANGE_DIALOG, -1, 1)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_1B, _const.CHANGE_DIALOG, -1, 1)
  elseif _util.GetComCount() == 1 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_2)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_2A, _const.CHANGE_DIALOG, -1, 2)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_2B, _const.CHANGE_DIALOG, -1, 2)
  elseif _util.GetComCount() == 2 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_3, _const.CHANGE_DIALOG, -1, 3)
  elseif _util.GetComCount() == 3 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_4, _const.END_DIALOG, -1, 3)
  elseif _util.GetComCount() == 4 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_5)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_5A, _const.CHANGE_DIALOG, -1, 5)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_5B, _const.CHANGE_DIALOG, -1, 5)
  elseif _util.GetComCount() == 5 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_6, _const.CHANGE_DIALOG, -1, 6)
  elseif _util.GetComCount() == 6 then
    _util.AddObjective(_text.C4_OBJ2)
    _util.AddSubObjective(_text.C4_OBJ2, _text.C4_SUBOBJ2_1B)
    _util.AddSubObjective(_text.C4_OBJ2, _text.C4_2SUBOBJ1)
    _util.AddSubObjective(_text.C4_OBJ2, _text.C4_SUBOBJ2_1D)
    _util.AddObjective(_text.C4_OBJ3)
    _util.AddObjective(_text.C4_OBJ1)
    _util.AddNPCTextComm(_text.C4_COMM_GARY_7, _const.CHANGE_DIALOG, -1, 7)
  elseif _util.GetComCount() == 7 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_8, _const.CHANGE_DIALOG, -1, 72)
  elseif _util.GetComCount() == 72 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_9, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetComCount() == 8 then
    L1_1()
  elseif _util.GetComCount() == 9 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSA_1, _const.CHANGE_DIALOG, -1, 10)
    _util.SetVar("C4_GQA", 1)
  elseif _util.GetComCount() == 10 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSA_2, _const.CHANGE_DIALOG, -1, 11)
  elseif _util.GetComCount() == 11 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSA_3, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetComCount() == 12 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSB_1, _const.CHANGE_DIALOG, -1, 13)
    _util.SetVar("C4_GQB", 1)
  elseif _util.GetComCount() == 13 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSB_2, _const.CHANGE_DIALOG, -1, 14)
  elseif _util.GetComCount() == 14 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSB_3, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetComCount() == 15 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSC_1, _const.CHANGE_DIALOG, -1, 16)
    _util.SetVar("C4_GQC", 1)
  elseif _util.GetComCount() == 16 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSC_2, _const.CHANGE_DIALOG, -1, 8)
  elseif _util.GetComCount() == 17 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSD_1, _const.CHANGE_DIALOG, -1, 19)
  elseif _util.GetComCount() == 18 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSD_2, _const.CHANGE_DIALOG, -1, 19)
  elseif _util.GetComCount() == 19 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_ANSD_4, _const.END_DIALOG, -1, 19)
  elseif _util.GetComCount() == 20 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_10)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_10A, _const.CHANGE_DIALOG, -1, 21)
  elseif _util.GetComCount() == 21 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_11)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_11A, _const.CHANGE_DIALOG, -1, 22)
  elseif _util.GetComCount() == 22 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_12, _const.CHANGE_DIALOG, -1, 23)
  elseif _util.GetComCount() == 23 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_13)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_13A, _const.CHANGE_DIALOG, -1, 24)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_13B, _const.CHANGE_DIALOG, -1, 27)
  elseif _util.GetComCount() == 24 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_14, _const.CHANGE_DIALOG, -1, 25)
  elseif _util.GetComCount() == 25 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_15, _const.CHANGE_DIALOG, -1, 26)
  elseif _util.GetComCount() == 26 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_16, _const.CHANGE_DIALOG, -1, 29)
  elseif _util.GetComCount() == 27 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_17, _const.CHANGE_DIALOG, -1, 28)
  elseif _util.GetComCount() == 28 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_18, _const.CHANGE_DIALOG, -1, 29)
  elseif _util.GetComCount() == 29 then
    _util.AddNPCTextComm(_text.C4_COMM_GARY_19)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_19A, _const.CHANGE_DIALOG, -1, 30)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_19B, _const.CHANGE_DIALOG, -1, 24)
    _util.AddPlayerOptionComm(_text.C4_COMM_GARY_19C, _const.CHANGE_DIALOG, -1, 27)
  elseif _util.GetComCount() == 30 then
    if 8 > _util.GetVar("c4IntroProgression") then
      _util.SetVar("c4IntroProgression", 8)
    end
    _util.SetVar("CallG", 3)
    _util.AddNPCTextComm(_text.C4_COMM_GARY_20, _const.END_DIALOG, -1, 29)
  end
end
if _util.GetReason() == _const.AFTER_DIALOG then
  if _util.GetVar("c4IntroProgression") == 1 then
    _util.SetVar("c4IntroProgression", 2)
  elseif _util.GetVar("c4IntroProgression") == 4 then
    _util.SetVar("c4IntroProgression", 5)
  end
end
