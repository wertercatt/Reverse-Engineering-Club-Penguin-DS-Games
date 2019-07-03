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
  L1_1 = L1_1.AFTER_DIALOG
  L0_0(L1_1)
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COMMUNICATOR
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CAVE_EXT_JPG_1)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C2_CAVE_EXT_A_1A, _const.CHANGE_DIALOG, 1)
    L1_1 = _util
    L1_1 = L1_1.AddPlayerOption
    L1_1(_text.C2_CAVE_EXT_A_1B, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddNPCText
    L1_1(_text.C2_CAVE_EXT_JPG_2, _const.END_DIALOG, 2)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.AFTER_DIALOG then
  function L1_1()
    local L0_2, L1_3, L2_4
    L0_2 = _util
    L0_2 = L0_2.ClearCom
    L0_2()
    L0_2 = _util
    L0_2 = L0_2.GetX
    L1_3 = _id
    L1_3 = L1_3.C2_Wilderness_JPG
    L0_2 = L0_2(L1_3)
    L0_2 = L0_2 + 243
    L1_3 = _util
    L1_3 = L1_3.GetY
    L2_4 = _id
    L2_4 = L2_4.C2_Wilderness_JPG
    L1_3 = L1_3(L2_4)
    L1_3 = L1_3 - 174
    L2_4 = 40
    _util.MoveObject(_id.C2_Wilderness_JPG, _util.GetX(_id.C2_Wilderness_JPG) + 243, _util.GetY(_id.C2_Wilderness_JPG) - 174, L2_4, 1)
    repeat
      scriptWait()
    until _util.GetX(_id.C2_Wilderness_JPG) == L0_2 and _util.GetY(_id.C2_Wilderness_JPG) == L1_3
    _util.DelItem(_id.C2_Wilderness_JPG)
  end
  scriptPlay(L1_1)
  _util.ChangeBaseAnim("NPC/M1/JetPackGuy/jpg_Blast", _id.C2_Wilderness_JPG)
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.COMMUNICATOR then
  L1_1 = _util
  L1_1 = L1_1.GetComCount
  L1_1 = L1_1()
  if L1_1 == 0 then
    _util.AddComText(_text.C2_COMM_JPG_9)
    _util.AddComOption(_text.C2_COMM_A_4, _const.CHANGE_DIALOG, 1)
  elseif L1_1 == 1 then
    _util.SetVar("C2_Event", _id.C2_MeetAtForrest)
    _util.SetExitLocked(_id.Doors_SkiHill2Wild, false)
    _util.AddComText(_text.C2_COMM_JPG_10)
    _util.AddComOption(_text.C2_COMM_JPG_10A, _const.END_DIALOG, 1)
  elseif L1_1 == 2 then
    _util.AddComText(_text.C2_COMM_JPG_11)
    _util.AddComOption(_text.C2_COMM_A_6, _const.END_DIALOG, 2)
  elseif L1_1 == 3 then
    _util.AddComText(_text.C2_COMM_JPG_12)
    _util.AddComOption(_text.C2_COMM_A_13, _const.CHANGE_DIALOG, 4)
  elseif L1_1 == 4 then
    _util.AddNPCTextComm(_text.C2_COMM_JPG_13, _const.END_DIALOG, -1, 3)
  end
end
