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
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("M1C1_haveCard3")
  if L1_1 == 0 then
    if L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(136, "DialogStrings", _const.CHANGE_DIALOG, 1)
    elseif L0_0 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(135, "DialogStrings", _const.CHANGE_DIALOG, 2)
    elseif L0_0 == 2 then
      function L1_1()
        _util.DisableInput()
        _util.SwitchState("grab", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.SwitchState("", _util.GetSelf())
        _util.SetVar("M1C1_haveCard3", 1)
        _util.EnableInput()
        _util.AddInventoryItem(_id.M1C1_Card3)
        _util.DelItem(_id.M1C1_DotMailbox)
        _util.AddItem(_id.M1C1_DotMailbox2)
        _util.SetSpawn(0, _id.M1C1_DotMailbox2)
        _util.SetSpawn(1, _id.M1C1_DotInnerTubes)
        _util.SetExitLocked(_id.Doors_Town2Dock, false)
        _util.SetExitLocked(_id.Doors_Snow2Town, false)
      end
      scriptPlay(L1_1)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C1_haveCard3")
    if L1_1 == 1 and L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(137)
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
  L1_1 = L1_1.M1C1_Card1
  if L0_0 ~= L1_1 then
    L1_1 = _id
    L1_1 = L1_1.M1C1_Card2
    if L0_0 ~= L1_1 then
      L1_1 = _id
      L1_1 = L1_1.M1C1_Card3
    end
  elseif L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(138)
  end
end
