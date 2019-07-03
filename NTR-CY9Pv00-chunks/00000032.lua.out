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
  L0_0 = L0_0.HasInventoryItem
  L1_1 = _id
  L1_1 = L1_1.M9_DuckReceiver
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = _util
    L0_0 = L0_0.HasInventoryItem
    L1_1 = _id
    L1_1 = L1_1.M9_DuckDeflated
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = _util
      L0_0 = L0_0.HasInventoryItem
      L1_1 = _id
      L1_1 = L1_1.M9_DuckInflated
      L0_0 = L0_0(L1_1)
      if not L0_0 then
        L0_0 = _util
        L0_0 = L0_0.HasInventoryItem
        L1_1 = _id
        L1_1 = L1_1.M9_DuckPatched
        L0_0 = L0_0(L1_1)
      end
    end
  elseif L0_0 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = _text
    L1_1 = L1_1.M9_TARGET_ICEBERG_LOC
    L0_0(L1_1, "GameStrings", _const.END_DIALOG, 0)
    L0_0 = _util
    L0_0 = L0_0.PushCamera
    L1_1 = _util
    L1_1 = L1_1.GetSelf
    L1_1 = L1_1()
    L0_0(L1_1, L1_1())
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
  L1_1 = L1_1.M9_DuckReceiver
  if L0_0 == L1_1 then
    function L1_1()
      _util.RemoveInventoryItem(_id.M9_DuckReceiver)
      _util.SetVar("M9_duck", 1)
      _util.AddItem(_id.M9_DuckFloating)
      if _util.GetVar("M9_kite") == 1 and _util.GetVar("M9_duck") == 1 and _util.GetVar("M9_cart") == 1 then
        _util.SetupComNpc(_const.COM_GARY, _id.M9_GaryGR, 0)
        _util.LaunchCommunicator()
      end
      _util.MarkObjComplete(_text.M9_OBJ_3)
      _util.RemoveMapAlert(1)
      _util.AddMapAlert(2, 597, 132, 4, 210, 90)
      _util.SwitchState("float", _id.M9_DuckFloating)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M9_DuckFloating)
      _util.SwitchState("", _id.M9_DuckFloating)
      _util.PopCamera(_id.M9_IcebergTarget)
      _util.DelItem(_util.GetSelf())
    end
    scriptPlay(L1_1)
    _util.SetVar("M9_duck", 1)
  elseif L0_0 == 33693 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(_text.M9_DUCK_NEEDS_TRANS, "DialogStrings", _const.END_DIALOG, 0)
  end
end
