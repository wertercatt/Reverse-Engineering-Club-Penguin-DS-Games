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
  L1_1 = 1703
  L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
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
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M3C2_hit", 0)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(1705, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleYellow
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(1706, "DialogStrings", _const.END_DIALOG, 0)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PuffleBlue
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(1707, "DialogStrings", _const.END_DIALOG, 0)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleGreen
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddMonologue
            L1_1(1708, "DialogStrings", _const.END_DIALOG, 0)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PufflePink
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(1709, "DialogStrings", _const.END_DIALOG, 0)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePurple
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(1704, "DialogStrings", _const.END_DIALOG, 0)
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
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  if L1_1 == _id.Inventory_PuffleRed then
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = _util
      L0_2 = L0_2.PlaySFX
      L1_3 = 14
      L0_2(L1_3)
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = "break"
      L2_4 = _id
      L2_4 = L2_4.M3C2_Pinata
      L0_2(L1_3, L2_4)
      repeat
        L0_2 = scriptWait
        L0_2()
        L0_2 = _util
        L0_2 = L0_2.IsAnimPlaying
        L1_3 = _id
        L1_3 = L1_3.M3C2_Pinata
        L0_2 = L0_2(L1_3)
      until not L0_2
      L0_2 = _util
      L0_2 = L0_2.AddItem
      L1_3 = _id
      L1_3 = L1_3.M3C2_Jack
      L0_2(L1_3)
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = "broken"
      L2_4 = _id
      L2_4 = L2_4.M3C2_Pinata
      L0_2(L1_3, L2_4)
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = "land"
      L2_4 = _id
      L2_4 = L2_4.M3C2_Jack
      L0_2(L1_3, L2_4)
      L0_2 = 60
      L1_3 = 30
      L2_4 = _util
      L2_4 = L2_4.GetY
      L2_4 = L2_4(_id.M3C2_Jack)
      L2_4 = L2_4 + L0_2
      _util.MoveObject(_id.M3C2_Jack, _util.GetX(_id.M3C2_Jack), L2_4, L1_3)
      repeat
        scriptWait()
      until _util.GetY(_id.M3C2_Jack) == L2_4
      _util.DelItem(_id.M3C2_Pinata)
      _util.SwitchState("open", _id.M3C2_Jack)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M3C2_Jack)
      _util.SwitchState("", _id.M3C2_Jack)
      _util.EnableInput()
      _util.AddMonologue(1710, "DialogStrings", _const.END_DIALOG, 0)
    end
    if _util.GetVar("M3C2_hit") == 0 then
      _util.SetVar("M3C2_hit", 1)
      scriptPlay(L1_1)
    end
  end
end
