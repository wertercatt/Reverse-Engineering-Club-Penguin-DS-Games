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
  L1_1 = L1_1("M1C1_HatDown")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C1_SFNPChasHat")
    if L1_1 == 0 and L0_0 == 0 then
      L1_1 = _util
      L1_1 = L1_1.AddLoopingConv
      L1_1(87)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(89, 93, _const.UPDATE_LOOP)
      L1_1 = _util
      L1_1 = L1_1.AddLoopingOption
      L1_1(91, -1, _const.CHANGE_DIALOG, 100)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M1C1_HatDown")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M1C1_SFNPChasHat")
      if L1_1 == 0 and L0_0 == 100 then
        L1_1 = _util
        L1_1 = L1_1.AddDialog
        L1_1(95, _const.END_DIALOG, 0)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M1C1_touchedSFNPC", 1)
      end
    elseif L0_0 == 10 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(99, 100, -1, _const.CHANGE_DIALOG, 11)
    elseif L0_0 == 11 then
      L1_1 = _util
      L1_1 = L1_1.AddConversation
      L1_1(101, 102, -1, _const.CHANGE_DIALOG, 12)
    elseif L0_0 == 12 then
      L1_1 = _util
      L1_1 = L1_1.AddDialog
      L1_1(103, _const.CHANGE_DIALOG, 13)
    elseif L0_0 == 13 then
      function L1_1()
        _util.AddItem(_id.M1C1_SnowFortNPC2)
        _util.SetConversationCount(0)
        _util.DelItem(_id.M1C1_SnowFortNPC)
      end
      scriptPlay(L1_1)
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M1C1_HatDown")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.GetVar
        L1_1 = L1_1("M1C1_SFNPChasHat")
        if L1_1 == 0 then
          L1_1 = _util
          L1_1 = L1_1.AddDialog
          L1_1(104, _const.END_DIALOG, 0)
        end
      end
    end
  end
end
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.ITEM_DROPPED
if L0_0 == L1_1 then
  function L0_0()
    _util.PushCamera()
    _util.DisableInput()
    _util.SwitchState("HatOn", _util.GetSelf())
    repeat
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.EnableInput()
    _util.PopCamera()
    _util.SetExitLocked(_id.Doors_Snow2PlazaUL, false)
    _util.SetExitLocked(_id.Doors_Snow2TownUL, false)
    _util.SetExitLocked(_id.Doors_Snow2IceUL, false)
    _util.SetVar("M1C1_SFNPChasHat", 1)
    _util.AddItem(_id.M1C1_SnowFortNPC1a)
    _util.RemoveInventoryItem(_id.M1C1_HatGround)
    _util.DelItem(_util.GetSelf())
    _util.ActivateNpc(_id.M1C1_SnowFortNPC1a, 0)
  end
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  if L1_1 == _id.M1C1_HatGround then
    scriptPlay(L0_0)
  elseif L1_1 == _id.M1C1_Card1 and _util.GetVar("M1C1_haveHat") == 0 then
    _util.ActivateNpc(_util.GetSelf(), 0)
  elseif L1_1 == _id.M1C1_Card2 and _util.GetVar("M1C1_haveHat") == 0 then
    _util.ActivateNpc(_util.GetSelf(), 0)
  end
end
