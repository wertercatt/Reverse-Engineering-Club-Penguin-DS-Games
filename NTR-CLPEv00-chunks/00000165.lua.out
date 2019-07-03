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
  L1_1 = "weightLifted"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1728
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
  else
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1735
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
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
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1729, "DialogStrings", _const.END_DIALOG, 0)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(1730, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleYellow
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(1731, "DialogStrings", _const.END_DIALOG, 0)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PuffleBlue
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(1732, "DialogStrings", _const.END_DIALOG, 0)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleGreen
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddMonologue
            L1_1(1733, "DialogStrings", _const.END_DIALOG, 0)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PufflePink
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(1734, "DialogStrings", _const.END_DIALOG, 0)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePurple
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.GetVar
                L1_1 = L1_1("weightLifted")
                if L1_1 == 0 then
                  L1_1 = _util
                  L1_1 = L1_1.SetSuccess
                  L1_1(_util.GetSelf(), true)
                  L1_1 = _util
                  L1_1 = L1_1.SetVar
                  L1_1("M3C2_hit", 0)
                end
              end
            end
          end
        end
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
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = _util
      L0_2 = L0_2.PlaySFX
      L1_3 = 84
      L0_2(L1_3)
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = "lift"
      L2_4 = _util
      L2_4 = L2_4.GetSelf
      L2_4 = L2_4()
      L0_2(L1_3, L2_4, L2_4())
      L0_2 = 60
      L1_3 = 60
      L2_4 = _util
      L2_4 = L2_4.GetY
      L2_4 = L2_4(_util.GetSelf())
      L2_4 = L2_4 - L0_2
      _util.MoveObject(_util.GetSelf(), _util.GetX(_util.GetSelf()), L2_4, L1_3)
      _util.SwitchState("raise", _id.M3C2_PressureSwitch)
      repeat
        scriptWait()
      until _util.GetY(_util.GetSelf()) == L2_4 and not _util.IsAnimPlaying(_id.M3C2_PressureSwitch)
      _util.AddItem(_id.M3C2_Dome)
      _util.AddItem(_id.M3C2_Pinata)
      _util.SetVar("weightLifted", 1)
      _util.DelItem(_id.M3C2_PressureSwitch)
      _util.AddItem(_id.M3C2_PressureSwitchUp)
      _util.PushCamera(_id.M3C2_Dome)
      _util.SwitchState("raise", _id.M3C2_Dome)
      _util.SwitchState("lower", _id.M3C2_Pinata)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M3C2_Dome) and not _util.IsAnimPlaying(_id.M3C2_Pinata)
      _util.SwitchState("", _id.M3C2_Dome)
      _util.SwitchState("", _id.M3C2_Pinata)
      _util.PopCamera(_id.M3C2_Dome)
      _util.DelItem(_util.GetSelf())
      _util.AddItem(_id.M3C2_BubbleWeight)
      _util.EnableInput()
      _util.AddMonologue(1735, "DialogStrings", _const.END_DIALOG, 0)
    end
    if _util.GetVar("M3C2_hit") == 0 then
      _util.SetVar("M3C2_hit", 1)
      scriptPlay(L1_1)
    end
  end
end
