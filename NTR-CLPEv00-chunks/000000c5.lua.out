local L0_0, L1_1
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
  if L0_0 == 50 then
    function L1_1()
      local L0_2, L1_3
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = 30
      L1_3 = 195
      _util.SetCursorPos(79, 257)
      _util.MoveObject(_id.M4C3_Bag1, _util.GetX(_id.M4C3_Bag1), L1_3, L0_2)
      repeat
        _util.DisableInput()
        scriptWait()
      until _util.GetY(_id.M4C3_Bag1) == L1_3
      _util.PlaySFX(55)
      _util.DelItem(_id.M4C3_Bag1)
      _util.SwitchState("takeHit", _id.M4C3_JBot_Far)
      repeat
        _util.DisableInput()
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_JBot_Far)
      _util.SetCursorPos(198, 261)
      _util.SwitchState("closer", _id.M4C3_JBot_Far)
      repeat
        _util.DisableInput()
        scriptWait()
      until not _util.IsAnimPlaying(_id.M4C3_JBot_Far)
      _util.DelItem(_id.M4C3_JBot_Far)
      _util.AddItem(_id.M4C3_JBot_Close)
      _util.SetVar("M4C3_fightJB", 1)
      _util.SetVar("M4C3_blackJB", 0)
      _util.SetVar("M4C3_blueJB", 0)
      _util.SetVar("M4C3_redJB", 0)
      _util.SetVar("M4C3_purpleJB", 0)
      _util.SetVar("M4C3_yellowJB", 0)
      _util.SetVar("M4C3_greenJB", 0)
      _util.SetVar("M4C3_pinkJB", 0)
      _util.SetVar("M4C3_dusterJB", 0)
      _util.SetVar("M4C3_robotomyJB", 0)
      _util.EnableInput()
      _util.ActivateNpc(_id.M4C3_JBot_Close, 345)
    end
    scriptPlay(L1_1)
  end
  if L0_0 == 101 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2823, "DialogStrings", _const.CHANGE_DIALOG, 102)
  elseif L0_0 == 102 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2824, "DialogStrings", _const.END_DIALOG, 0)
  end
end
