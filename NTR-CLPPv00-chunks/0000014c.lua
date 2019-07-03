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
  if L0_0 == 100 then
    function L1_1()
      local L0_2, L1_3, L2_4
      L0_2 = _util
      L0_2 = L0_2.SetConversationCount
      L1_3 = 0
      L0_2(L1_3)
      L0_2 = _util
      L0_2 = L0_2.DelItem
      L1_3 = _id
      L1_3 = L1_3.M3C1_FileCabinet
      L0_2(L1_3)
      L0_2 = 100
      L1_3 = 20
      L2_4 = _util
      L2_4 = L2_4.GetX
      L2_4 = L2_4(_id.M3C1_FileCabinetBubble)
      _util.PushCamera(_id.M3C1_FileCabinetBubble)
      _util.MoveObject(_id.M3C1_FileCabinetBubble, L2_4, L1_3, L0_2)
      repeat
        scriptWait()
      until _util.GetY(_id.M3C1_FileCabinetBubble) == L1_3
      _util.PopCamera()
      _util.EnableInput()
      _util.SetCursorPos(_util.GetX(_id.M3C1_FileCabinetBubble), _util.GetY(_id.M3C1_FileCabinetBubble, 1))
      _util.ActivateNpc(_id.M3C1_DJ_Boiler, 20)
    end
    scriptPlay(L1_1)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_liftedCabinet")
    if L1_1 == 0 then
      if L0_0 == 0 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(1484, "DialogStrings", _const.CHANGE_DIALOG, 1)
        L1_1 = _util
        L1_1 = L1_1.SetVar
        L1_1("M3C1_touchedCabinet", 1)
      elseif L0_0 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(1485, "DialogStrings", _const.END_DIALOG, 0)
      end
    else
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M3C1_liftedCabinet")
      if L1_1 == 1 then
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(1490)
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
  L0_0 = _util
  L0_0 = L0_0.GetSource
  L0_0 = L0_0()
  L1_1 = _id
  L1_1 = L1_1.Inventory_PufflePurple
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
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
  L1_1 = L1_1.Inventory_PufflePurple
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M3C1_liftedCabinet")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M3C1_liftedCabinet", 1)
      function L1_1()
        _util.DisableInput()
        _util.PlaySFX(84)
        _util.SwitchState("bubble", _util.GetSelf())
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.M3C1_FileCabinet)
        _util.AddItem(_id.M3C1_OilCan_Boiler)
        _util.AddItem(_id.M3C1_FileCabinetBubble)
        _util.ActivateNpc(_id.M3C1_FileCabinetBubble, 100)
      end
      scriptPlay(L1_1)
    end
  end
end
