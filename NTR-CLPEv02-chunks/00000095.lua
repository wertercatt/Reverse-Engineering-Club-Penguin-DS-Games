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
  if L0_0 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1617, _const.CHANGE_NPC, _id.M3C2_PH_TallestM, 7)
    L1_1 = _util
    L1_1 = L1_1.IncVar
    L1_1("M3C2_jetpackGameComplete")
  elseif L0_0 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddDialog
    L1_1(1620, _const.CHANGE_DIALOG, 2)
  elseif L0_0 == 2 then
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = _util
      L0_2 = L0_2.PlaySFX
      L1_3 = 31
      L0_2(L1_3)
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = "Flying"
      L2_4 = _util
      L2_4 = L2_4.GetSelf
      L2_4 = L2_4()
      L0_2(L1_3, L2_4, L2_4())
      L0_2 = 200
      L1_3 = 80
      L2_4 = _util
      L2_4 = L2_4.GetY
      L2_4 = L2_4(_util.GetSelf())
      L2_4 = L2_4 - L0_2
      _util.MoveObject(_util.GetSelf(), _util.GetX(_util.GetSelf()), L2_4, L1_3)
      repeat
        scriptWait()
      until _util.GetY(_util.GetSelf()) == _util.GetY(_util.GetSelf()) - L0_2 / 2
      _util.EnableInput()
      _util.ActivateNpc(_id.M3C2_PH_TallestM, 9)
    end
    scriptPlay(L1_1)
  end
end
