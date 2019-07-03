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
  L0_0 = L0_0.GetConversationCount
  L0_0 = L0_0()
  L1_1 = _util
  L1_1 = L1_1.GetActiveMission
  L1_1 = L1_1()
  if L1_1 == 0 and _util.GetActiveChapter() == 10 then
    _util.AddMonologue(2364)
  elseif L1_1 == 4 and L0_0 == 0 then
    if _util.GetVar("M4C2_barricadeDown") == 0 then
      _util.AddMonologue(2410)
    elseif 0 < _util.GetVar("M4C2_barricadeDown") then
      _util.AddMonologue(2409)
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
  L1_1 = _util
  L1_1 = L1_1.GetActiveMission
  L1_1 = L1_1()
  if L1_1 == 0 and _util.GetActiveChapter() == 10 then
    if L0_0 == _id.Inventory_PuffleRed or L0_0 == _id.Inventory_PufflePurple then
      _util.AddMonologue(2365)
    end
  elseif L1_1 == 4 then
    if L0_0 == _id.Inventory_PuffleRed then
      if _util.GetVar("M4C2_barricadeDown") == 0 then
        _util.SetSuccess(_util.GetSelf(), true)
        _util.SetVar("M4C2_hit", 0)
      end
    elseif L0_0 == _id.Inventory_PufflePurple and _util.GetVar("M4C2_barricadeDown") == 0 then
      _util.SetSuccess(_util.GetSelf(), true)
      _util.SetVar("M4C2_hit", 0)
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
  L1_1 = L1_1.Inventory_PuffleRed
  if L0_0 == L1_1 then
    function L1_1()
      _util.DisableInput()
      _util.PlaySFX(14)
      _util.SwitchState("break", _util.GetSelf())
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_util.GetSelf())
      _util.SetVar("M4C2_barricadeDown", 1)
      _util.DelItem(_id.M4C2_Barricade)
      _util.EnableInput()
      _util.SetExitLocked(_id.Doors_Town2Gift, false)
      _util.AddMonologue(2412)
    end
    if _util.GetVar("M4C2_hit") == 0 then
      _util.SetVar("M4C2_hit", 1)
      scriptPlay(L1_1)
    end
  else
    L1_1 = _id
    L1_1 = L1_1.Inventory_PufflePurple
    if L0_0 == L1_1 then
      function L1_1()
        _util.DisableInput()
        _util.PlaySFX(84)
        _util.SwitchState("bubble", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_util.GetSelf())
        _util.SetVar("M4C2_barricadeDown", 2)
        _util.AddItem(_id.M4C2_BarricadeBubbled)
        _util.SetExitLocked(_id.Doors_Town2Gift, false)
        _util.DelItem(_id.M4C2_Barricade)
        _util.EnableInput()
        _util.AddMonologue(2411)
      end
      if _util.GetVar("M4C2_hit") == 0 then
        _util.SetVar("M4C2_hit", 1)
        scriptPlay(L1_1)
      end
    end
  end
end
