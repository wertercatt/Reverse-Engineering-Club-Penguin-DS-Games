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
  L1_1 = 1739
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
  L1_1 = L1_1.Inventory_ChestKey
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1740, "DialogStrings", _const.END_DIALOG, 0)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleRed
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(1742, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleBlack
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(1744, "DialogStrings", _const.END_DIALOG, 0)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PuffleYellow
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(1743, "DialogStrings", _const.END_DIALOG, 0)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleBlue
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.SetSuccess
            L1_1(_util.GetSelf(), true)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M3C2_fireChest_hit", 0)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleGreen
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(1745, "DialogStrings", _const.END_DIALOG, 0)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePink
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(1746, "DialogStrings", _const.END_DIALOG, 0)
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_PufflePurple
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddMonologue
                  L1_1(1741, "DialogStrings", _const.END_DIALOG, 0)
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
  L1_1 = L1_1.Inventory_PuffleBlue
  if L0_0 == L1_1 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(57)
      _util.SwitchState("hot2normal", _id.M3C2_FireChest)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M3C2_FireChest)
      _util.AddItem(_id.M3C2_NormalChest)
      _util.SwitchState("", _id.M3C2_NormalChest)
      _util.DelItem(_id.M3C2_FireChest)
      _util.EnableInput()
      _util.AddMonologue(1747)
    end
    if _util.GetVar("M3C2_fireChest_hit") == 0 then
      _util.SetVar("M3C2_fireChest_hit", 1)
      scriptPlay(L1_1)
    end
  end
end
