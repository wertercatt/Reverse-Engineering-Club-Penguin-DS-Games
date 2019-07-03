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
  if L0_0 == 50 then
    function L1_1()
      repeat
        if _util.GetVar("M5C1_moveBalloon") == 1 then
          _util.MoveObject(_id.M5C1_Balloon, 698, _util.GetY(_id.M5C1_Balloon))
          _util.MoveObject(_id.M5C1_Anvil, 696, _util.GetY(_id.M5C1_Anvil))
        end
        repeat
          scriptWait()
        until 698 >= _util.GetX(_id.M5C1_Balloon) or _util.GetVar("M5C1_moveBalloon") == 0
        if _util.GetVar("M5C1_moveBalloon") == 1 then
          _util.MoveObject(_id.M5C1_Balloon, 788, _util.GetY(_id.M5C1_Balloon))
          _util.MoveObject(_id.M5C1_Anvil, 786, _util.GetY(_id.M5C1_Anvil))
        end
        repeat
          scriptWait()
        until _util.GetX(_id.M5C1_Balloon) >= 788 or _util.GetVar("M5C1_moveBalloon") == 0
      until _util.GetVar("M5C1_moveBalloon") == 0
      _util.ClearEffects(_id.M5C1_Balloon)
      _util.ClearEffects(_id.M5C1_Anvil)
    end
    if _util.IsCommandCoachActive() == false then
      scriptPlay(L1_1)
    end
    _util.ActivateNpc(_id.M5C1_SuperRobot_Beacon, 100)
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("robostatus")
    if L1_1 < 4 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L1_1(3228)
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
  L1_1 = L1_1.Inventory_PuffleGreen
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetX
    L1_1 = L1_1()
    if L1_1 >= 758 then
      L1_1 = _util
      L1_1 = L1_1.GetX
      L1_1 = L1_1()
    else
      if not (L1_1 <= 778) then
        L1_1 = _util
        L1_1 = L1_1.IsCommandCoachActive
        L1_1 = L1_1()
    end
    elseif L1_1 then
      L1_1 = _util
      L1_1 = L1_1.SetSuccess
      L1_1(_util.GetSelf(), true)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("collided", 0)
      L1_1 = _util
      L1_1 = L1_1.SetVar
      L1_1("M5C1_moveBalloon", 0)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), false)
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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("collided")
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.SetVar
    L1_1("collided", 1)
    L1_1 = _id
    L1_1 = L1_1.Inventory_PuffleGreen
    if L0_0 == L1_1 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M5C1_AnvilHit")
      if L1_1 == 0 then
        function L1_1()
          _util.DisableInput()
          _util.ClearEffects(_id.M5C1_Anvil)
          _util.MoveObject(_id.M5C1_Anvil, _util.GetX(_id.M5C1_Anvil), 100, 20)
          _util.DelItem(_id.M5C1_Balloon)
          repeat
            scriptWait()
          until _util.GetY(_id.M5C1_Anvil) >= 90
          _util.SetVar("M5C1_AnvilHit", 1)
          _util.DelItem(_id.M5C1_Anvil)
          _util.ActivateNpc(_id.M5C1_SuperRobot_Beacon, 204)
          _util.EnableInput()
        end
        scriptPlay(L1_1)
      else
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(3229)
      end
    end
  end
end
