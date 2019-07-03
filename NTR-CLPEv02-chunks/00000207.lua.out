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
  L0_0 = L0_0.GetVar
  L1_1 = "FPM08_SSClerkAskedHelp"
  L0_0 = L0_0(L1_1)
  if L0_0 == 1 then
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "FPM08_wardrobe_hit"
    L0_0 = L0_0(L1_1)
    if L0_0 == 0 then
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = 3851
      L0_0(L1_1)
    end
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "FPM08_wardrobe_hit"
    L0_0 = L0_0(L1_1)
    if L0_0 == 1 then
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = 3853
      L0_0(L1_1)
    else
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = 4521
      L0_0(L1_1)
    end
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
  L1_1 = L1_1.Inventory_PufflePurple
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM08_SSClerkAskedHelp")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM08_wardrobe_hit")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.SetSuccess
        L1_1(_util.GetSelf(), true)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM08_SSClerkAskedHelp")
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("FPM08_wardrobe_hit")
      if L1_1 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3852)
      end
    end
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
  L1_1 = L1_1.Inventory_PufflePurple
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM08_wardrobe_hit")
    if L1_1 == 0 then
      function L1_1()
        local L0_2, L1_3, L2_4
        L0_2 = _util
        L0_2 = L0_2.DisableInput
        L0_2()
        L0_2 = _util
        L0_2 = L0_2.SetVar
        L1_3 = "FPM08_wardrobe_hit"
        L2_4 = 1
        L0_2(L1_3, L2_4)
        L0_2 = _util
        L0_2 = L0_2.IncVar
        L1_3 = "FPM08_NPCs_Helped"
        L0_2(L1_3)
        L0_2 = _util
        L0_2 = L0_2.PlaySFX
        L1_3 = 84
        L0_2(L1_3)
        L0_2 = _util
        L0_2 = L0_2.SwitchState
        L1_3 = "bubble"
        L2_4 = _id
        L2_4 = L2_4.FPM08_Wardrobe
        L0_2(L1_3, L2_4)
        repeat
          L0_2 = scriptWait
          L0_2()
          L0_2 = _util
          L0_2 = L0_2.DisableInput
          L0_2()
          L0_2 = _util
          L0_2 = L0_2.IsAnimPlaying
          L1_3 = _id
          L1_3 = L1_3.FPM08_Wardrobe
          L0_2 = L0_2(L1_3)
        until not L0_2
        L0_2 = _util
        L0_2 = L0_2.AddItem
        L1_3 = _id
        L1_3 = L1_3.FPM08_Wardrobe2
        L0_2(L1_3)
        L0_2 = _util
        L0_2 = L0_2.GetY
        L1_3 = _id
        L1_3 = L1_3.FPM08_Wardrobe2
        L0_2 = L0_2(L1_3)
        L0_2 = L0_2 - 40
        L1_3 = _util
        L1_3 = L1_3.GetX
        L2_4 = _id
        L2_4 = L2_4.FPM08_Wardrobe
        L1_3 = L1_3(L2_4)
        L2_4 = 60
        _util.DelItem(_id.FPM08_Wardrobe)
        _util.MoveObject(_id.FPM08_Wardrobe2, L1_3, L0_2, L2_4)
        repeat
          scriptWait()
        until _util.GetY(_id.FPM08_Wardrobe2) == L0_2
        _util.EnableInput()
        _util.AddMonologue(3853, "DialogStrings", _const.CHANGE_NPC, _id.FPM08_SkiShopClerk, 5)
      end
      scriptPlay(L1_1)
    end
  end
end
