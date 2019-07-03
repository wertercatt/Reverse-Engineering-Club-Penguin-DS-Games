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
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.COLLIDED
  L0_0(L1_1)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.TOUCHED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddMonologue
  L1_1 = 4251
  L0_0(L1_1)
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
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("FPM12_hit", 0)
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
  else
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(4252)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM12_hit")
    if L1_1 == 0 then
      function L1_1()
        local L0_2, L1_3
        L0_2 = _util
        L0_2 = L0_2.SetVar
        L1_3 = "FPM12_hit"
        L0_2(L1_3, 1)
        L0_2 = _util
        L0_2 = L0_2.PlaySFX
        L1_3 = 57
        L0_2(L1_3)
        L0_2 = _util
        L0_2 = L0_2.AddItem
        L1_3 = _id
        L1_3 = L1_3.FPM14_Coconut_Beach
        L0_2(L1_3)
        L0_2 = _util
        L0_2 = L0_2.DisableInput
        L0_2()
        L0_2 = _util
        L0_2 = L0_2.SwitchState
        L1_3 = "fall"
        L0_2(L1_3, _id.FPM14_Coconut_Beach)
        repeat
          L0_2 = scriptWait
          L0_2()
          L0_2 = _util
          L0_2 = L0_2.IsAnimPlaying
          L1_3 = _id
          L1_3 = L1_3.FPM14_Coconut_Beach
          L0_2 = L0_2(L1_3)
        until not L0_2
        L0_2 = _util
        L0_2 = L0_2.SwitchState
        L1_3 = ""
        L0_2(L1_3, _id.FPM14_Coconut_Beach)
        L0_2 = _util
        L0_2 = L0_2.EnableInput
        L0_2()
        L0_2 = _util
        L0_2 = L0_2.AddItem
        L1_3 = _id
        L1_3 = L1_3.FPM14_EmptyPalmTree_Beach
        L0_2(L1_3)
        L0_2 = _util
        L0_2 = L0_2.DelItem
        L1_3 = _id
        L1_3 = L1_3.FPM14_PalmTree_Beach
        L0_2(L1_3)
        L0_2 = _util
        L0_2 = L0_2.GetX
        L1_3 = _id
        L1_3 = L1_3.FPM14_EmptyPalmTree_Beach
        L0_2 = L0_2(L1_3)
        L1_3 = _util
        L1_3 = L1_3.GetX
        L1_3 = L1_3(_id.FPM14_EmptyPalmTree_Beach)
        _util.SetCursorPos(L0_2, L1_3, 1)
        _util.ActivateNpc(_id.FPM14_EmptyPalmTree_Beach, 1)
      end
      scriptPlay(L1_1)
    end
  end
end
