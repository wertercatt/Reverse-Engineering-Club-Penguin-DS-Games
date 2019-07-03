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
    L1_1 = L1_1.AddMonologue
    L1_1(1231, "DialogStrings", _const.END_DIALOG, 0)
  elseif L0_0 == 100 then
    function L1_1()
      local L0_2, L1_3
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = _util
      L0_2 = L0_2.PushCamera
      L0_2()
      L0_2 = 150
      L1_3 = 40
      _util.MoveObject(_id.M2C3_CrashedCart, _util.GetX(_id.M2C3_CrashedCart), L0_2, L1_3, 1)
      repeat
        scriptWait()
      until _util.GetY(_id.M2C3_CrashedCart) == L0_2
      _util.ScreenShake(60)
      _util.PlaySFX(114)
      repeat
        scriptWait()
        if 0 + 1 == 30 then
          _util.PopCamera()
        end
      until 0 + 1 >= 70
      _util.SetVar("M2C3_cartCrashed", 1)
      _util.EnableInput()
      _util.ActivateNpc(_id.M2C3_GaryBump_MCS, 103)
    end
    _util.SetConversationCount(0)
    scriptPlay(L1_1)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.M2C3_Crowbar
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(4321, "DialogStrings", _const.END_DIALOG, 0)
  end
end
