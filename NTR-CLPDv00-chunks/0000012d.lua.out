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
  L1_1 = "M3C2_ChestOpen"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1748
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
  L1_1 = L1_1.Inventory_ChestKey
  if L0_0 == L1_1 then
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.AddMonologue
      L1_3 = 1756
      L2_4 = "DialogStrings"
      L0_2(L1_3, L2_4, _const.END_DIALOG, 0)
      L0_2 = _util
      L0_2 = L0_2.DisableInput
      L0_2()
      L0_2 = _util
      L0_2 = L0_2.RemoveInventoryItem
      L1_3 = _id
      L1_3 = L1_3.Inventory_ChestKey
      L0_2(L1_3)
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = "opening"
      L2_4 = _id
      L2_4 = L2_4.M3C2_NormalChest
      L0_2(L1_3, L2_4)
      repeat
        L0_2 = scriptWait
        L0_2()
        L0_2 = _util
        L0_2 = L0_2.IsAnimPlaying
        L1_3 = _id
        L1_3 = L1_3.M3C2_NormalChest
        L0_2 = L0_2(L1_3)
      until not L0_2
      L0_2 = _util
      L0_2 = L0_2.AddItem
      L1_3 = _id
      L1_3 = L1_3.M3C2_Balloon
      L0_2(L1_3)
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = "raise"
      L2_4 = _id
      L2_4 = L2_4.M3C2_Balloon
      L0_2(L1_3, L2_4)
      repeat
        L0_2 = scriptWait
        L0_2()
        L0_2 = _util
        L0_2 = L0_2.IsAnimPlaying
        L1_3 = _id
        L1_3 = L1_3.M3C2_Balloon
        L0_2 = L0_2(L1_3)
      until not L0_2
      L0_2 = _util
      L0_2 = L0_2.SwitchState
      L1_3 = ""
      L2_4 = _id
      L2_4 = L2_4.M3C2_Balloon
      L0_2(L1_3, L2_4)
      L0_2 = 50
      L1_3 = 60
      L2_4 = _util
      L2_4 = L2_4.GetY
      L2_4 = L2_4(_id.M3C2_Balloon)
      L2_4 = L2_4 - L0_2
      _util.MoveObject(_id.M3C2_Balloon, _util.GetX(_id.M3C2_Balloon), L2_4, L1_3)
      repeat
        scriptWait()
      until _util.GetY(_id.M3C2_Balloon) == L2_4
      _util.SetVar("M3C2_ChestOpen", 1)
      _util.AddItem(_id.M3C2_InsideChest)
      _util.DelItem(_id.M3C2_NormalChest)
      _util.EnableInput()
    end
    scriptPlay(L1_1)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleRed
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(1750, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleBlack
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.SetSuccess
        L1_1(_util.GetSelf(), true)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M3C2_hit", 0)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PuffleYellow
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(1751, "DialogStrings", _const.END_DIALOG, 0)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleBlue
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.SetSuccess
            L1_1(_util.GetSelf(), true)
            L1_1 = _util
            L1_1 = L1_1.SetVar
            L1_1("M3C2_hit", 0)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PuffleGreen
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.AddMonologue
              L1_1(1753, "DialogStrings", _const.END_DIALOG, 0)
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePink
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(1754, "DialogStrings", _const.END_DIALOG, 0)
              else
                L1_1 = _id
                L1_1 = L1_1.Inventory_PufflePurple
                if L0_0 == L1_1 then
                  L1_1 = _util
                  L1_1 = L1_1.AddMonologue
                  L1_1(1749, "DialogStrings", _const.END_DIALOG, 0)
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
  L1_1 = L1_1.Inventory_PuffleBlack
  if L0_0 == L1_1 then
    function L1_1()
      _util.DisableInput()
      _util.SetCursorPos(_util.GetX(_util.GetSelf()), _util.GetY(_util.GetSelf()))
      repeat
        scriptWait()
      until 0 + 1 == 60
      _util.SwitchState("normal2hot", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.AddItem(_id.M3C2_FireChest)
      _util.SwitchState("", _id.M3C2_FireChest)
      _util.DelItem(_id.M3C2_NormalChest)
      _util.EnableInput()
      _util.AddMonologue(1752)
    end
    if _util.GetVar("M3C2_hit") == 0 then
      _util.SetVar("M3C2_hit", 1)
      scriptPlay(L1_1)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlue
    if L0_0 == L1_1 then
      function L1_1()
        _util.DisableInput()
        _util.PushCamera(_id.M3C2_NormalChest)
        _util.SwitchState("normal2cold", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.PopCamera(_id.M3C2_NormalChest)
        _util.AddItem(_id.M3C2_IceChest)
        _util.SwitchState("", _id.M3C2_IceChest)
        _util.DelItem(_id.M3C2_NormalChest)
        _util.EnableInput()
        _util.AddMonologue(1755)
      end
      if _util.GetVar("M3C2_hit") == 0 then
        _util.SetVar("M3C2_hit", 1)
        scriptPlay(L1_1)
      end
    end
  end
end
