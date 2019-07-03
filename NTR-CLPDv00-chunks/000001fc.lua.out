local L0_0
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.CREATED then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L0_0(_const.ITEM_DROPPED)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.TOUCHED then
  L0_0 = _util
  L0_0 = L0_0.AddMonologue
  L0_0(1157)
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
if L0_0 == _const.ITEM_DROPPED then
  function L0_0()
    _util.SetVar("inflated", 1)
    _util.PushCamera(_id.Object_Geyser)
    _util.DisableInput()
    _util.SwitchState("inflate", _id.Object_Geyser)
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_id.Object_Geyser)
    _util.SwitchState("idle", _id.Object_Geyser)
    _util.PopCamera(_id.Object_Geyser)
    _util.EnableInput()
    _util.AddInventoryItem(_id.Inventory_FullBalloon)
    if _util.GetVar("firstBalloon") == 0 then
      _util.AddMonologue(1161)
      _util.SetVar("firstBalloon", 1)
    end
  end
  if _util.GetSource() == _id.Inventory_Balloon1 or _util.GetSource() == _id.Inventory_Balloon2 or _util.GetSource() == _id.Inventory_Balloon3 then
    if _util.GetVar("inflated") == 0 then
      if _util.GetSource() == _id.Inventory_Balloon1 then
        _util.RemoveInventoryItem(_id.Inventory_Balloon1)
        scriptPlay(L0_0)
      elseif _util.GetSource() == _id.Inventory_Balloon2 then
        _util.RemoveInventoryItem(_id.Inventory_Balloon2)
        scriptPlay(L0_0)
      elseif _util.GetSource() == _id.Inventory_Balloon3 then
        _util.RemoveInventoryItem(_id.Inventory_Balloon3)
        scriptPlay(L0_0)
      end
    elseif _util.GetVar("inflated") ~= 0 then
      _util.AddMonologue(1161)
    end
  elseif _util.GetSource() == _id.Inventory_Flashlight then
    _util.AddMonologue(1159)
  elseif _util.GetSource() == _id.Inventory_FullBalloon then
    _util.AddMonologue(1160)
  end
end
