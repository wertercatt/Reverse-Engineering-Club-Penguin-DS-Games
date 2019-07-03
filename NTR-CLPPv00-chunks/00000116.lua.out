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
  L1_1 = L1_1.TOUCHED
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
    L1_1(795, "DialogStrings", _const.CHANGE_DIALOG, 1)
  elseif L0_0 == 1 then
    function L1_1()
      _util.DisableInput()
      _util.SwitchState("opening", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SwitchState("open", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.EnableInput()
      _util.ActivateNpc(_util.GetSelf(), 2)
    end
    scriptPlay(L1_1)
  elseif L0_0 == 2 then
    L1_1 = _util
    L1_1 = L1_1.AddInventoryItem
    L1_1(_id.Inventory_Duster)
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("M2C1_haveDuster", 1)
    L1_1 = _util
    L1_1 = L1_1.DelItem
    L1_1(_util.GetSelf())
    L1_1 = _util
    L1_1 = L1_1.SetObjective
    L1_1(639)
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.COLLIDED
if L0_0 == L1_1 then
end
