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
  L1_1 = "haveChestKey"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 1711
    L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
  else
    L0_0 = _util
    L0_0 = L0_0.GetVar
    L1_1 = "haveChestKey"
    L0_0 = L0_0(L1_1)
    if L0_0 == 1 then
      function L0_0()
        _util.DisableInput()
        _util.SwitchState("grab", _id.M3C2_JackTied)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M3C2_JackTied)
        _util.DelItem(_id.M3C2_JackTied)
        _util.AddItem(_id.M3C2_JackNoKey)
        _util.SetVar("haveChestKey", 2)
        _util.EnableInput()
        _util.AddInventoryItem(_id.Inventory_ChestKey)
      end
      L1_1 = scriptPlay
      L1_1(L0_0)
    else
      L0_0 = _util
      L0_0 = L0_0.AddMonologue
      L1_1 = 1720
      L0_0(L1_1, "DialogStrings", _const.END_DIALOG, 0)
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
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(1713, "DialogStrings", _const.END_DIALOG, 0)
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleBlack
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(1714, "DialogStrings", _const.END_DIALOG, 0)
    else
      L1_1 = _id
      L1_1 = L1_1.Inventory_PuffleYellow
      if L0_0 == L1_1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(1715, "DialogStrings", _const.END_DIALOG, 0)
      else
        L1_1 = _id
        L1_1 = L1_1.Inventory_PuffleBlue
        if L0_0 == L1_1 then
          L1_1 = _util
          L1_1 = L1_1.AddMonologue
          L1_1(1716, "DialogStrings", _const.END_DIALOG, 0)
        else
          L1_1 = _id
          L1_1 = L1_1.Inventory_PuffleGreen
          if L0_0 == L1_1 then
            L1_1 = _util
            L1_1 = L1_1.AddMonologue
            L1_1(1717, "DialogStrings", _const.END_DIALOG, 0)
          else
            L1_1 = _id
            L1_1 = L1_1.Inventory_PufflePink
            if L0_0 == L1_1 then
              L1_1 = _util
              L1_1 = L1_1.GetVar
              L1_1 = L1_1("haveChestKey")
              if L1_1 == 0 then
                L1_1 = _util
                L1_1 = L1_1.SetSuccess
                L1_1(_util.GetSelf(), true)
                L1_1 = _util
                L1_1 = L1_1.SetVar
                L1_1("M3C2_hit", 0)
              end
            else
              L1_1 = _id
              L1_1 = L1_1.Inventory_PufflePurple
              if L0_0 == L1_1 then
                L1_1 = _util
                L1_1 = L1_1.AddMonologue
                L1_1(1712, "DialogStrings", _const.END_DIALOG, 0)
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
  L1_1 = L1_1.Inventory_PufflePink
  if L0_0 == L1_1 then
    function L1_1()
      _util.DisableInput()
      _util.SetVar("haveChestKey", 1)
      _util.PlaySFX(102)
      _util.SwitchState("rope", _id.M3C2_Jack)
      repeat
        scriptWait()
        _util.DisableInput()
      until not _util.IsAnimPlaying(_id.M3C2_Jack)
      _util.AddItem(_id.M3C2_JackTied)
      _util.DelItem(_id.M3C2_Jack)
      _util.EnableInput()
      _util.EnableInput()
      _util.EnableInput()
      _util.AddMonologue(1718)
    end
    if _util.GetVar("M3C2_hit") == 0 then
      _util.SetVar("M3C2_hit", 1)
      scriptPlay(L1_1)
    end
  end
end
