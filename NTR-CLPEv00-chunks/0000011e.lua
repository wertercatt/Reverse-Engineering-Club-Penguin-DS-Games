local L0_0, L1_1, L2_2
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
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
  function L1_1()
    _util.DisableInput()
    _util.SwitchState("Flying")
    _util.PlaySFX(31)
    _util.MoveObject(_util.GetSelf(), 320, 168, 90)
    repeat
      scriptWait()
    until 168 <= _util.GetY(_util.GetSelf())
    _util.SwitchState("walk")
    _util.MoveObject(_util.GetSelf(), 210, 168)
    repeat
      scriptWait()
    until 210 >= _util.GetX(_util.GetSelf())
    _util.SwitchState("idle")
    _util.EnableInput()
    _util.ActivateNpc(_id.M1C3_RookieRiver2, 2)
  end
  if L0_0 == 0 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L2_2(705, _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    L2_2 = scriptPlay
    L2_2(L1_1)
  elseif L0_0 == 2 then
    L2_2 = _util
    L2_2 = L2_2.AddConversation
    L2_2(708, 707, -1, _const.CHANGE_DIALOG, 20)
  elseif L0_0 == 20 then
    function L2_2()
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.DisplayPopUp(626, "UI/Smilie", false)
      repeat
        scriptWait()
      until _util.IsPopUpVisible() == false
      _util.AddSmileys(10, _util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      _util.ActivateNpc(_util.GetSelf(), 3)
    end
    scriptPlay(L2_2)
  elseif L0_0 == 3 then
    L2_2 = _util
    L2_2 = L2_2.AddDialog
    L2_2(709, _const.CHANGE_ROOM, 8)
  end
end
