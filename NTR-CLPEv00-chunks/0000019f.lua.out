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
  L1_1 = L1_1.ITEM_DROPPED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(263, 264, -1, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(265, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(266, 267, -1, _const.CHANGE_DIALOG, 3)
  elseif L0_0 == 3 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(268, 269, -1, _const.CHANGE_DIALOG, 4)
  elseif L0_0 == 4 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(270, _const.CHANGE_DIALOG, 5)
  elseif L0_0 == 5 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(271, 272, -1, _const.CHANGE_DIALOG, 6)
  elseif L0_0 == 6 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(273, _const.CHANGE_DIALOG, 7)
  elseif L0_0 == 7 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(274, _const.CHANGE_DIALOG, 8)
  elseif L0_0 == 8 then
    L1_1 = _util
    L1_1 = L1_1.AddConversation
    L1_1(275, 276, -1, _const.CHANGE_DIALOG, 9)
  elseif L0_0 == 9 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M1C2_introDone", 1)
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(277, _const.CHANGE_DIALOG, 11)
  elseif L0_0 == 11 then
    function L1_1()
      _util.DelItem(_id.M1C2_Director_PTR)
      _util.DisableInput()
      _util.SwitchState("closing", _id.M1C2_Director_Monitor)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M1C2_Director_Monitor)
      _util.SwitchState("", _id.M1C2_Director_Monitor)
      _util.EnableInput()
      _util.AddItem(_id.M1C2_PuffleHandler)
      _util.AddItem(_id.M1C2_Blast)
      _util.ActivateNpc(_id.M1C2_PuffleHandler, 42)
      _util.DelItem(_id.M1C2_Director_Monitor)
    end
    _util.SetConversationCount(12)
    scriptPlay(L1_1)
  end
end
