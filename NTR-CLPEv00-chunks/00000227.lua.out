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
  L1_1 = "M4C3_deadSB"
  L0_0 = L0_0(L1_1)
  if L0_0 == 3 then
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 2838
    L0_0(L1_1, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JBot_Far, 345)
  else
    L0_0 = _util
    L0_0 = L0_0.AddMonologue
    L1_1 = 4829
    L0_0(L1_1)
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
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("M4C3_fightJB")
    if L1_1 == 0 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L1_1 = L1_1("M4C3_deadSB")
      if L1_1 == 3 then
        L1_1 = _util
        L1_1 = L1_1.GetX
        L1_1 = L1_1(_id.M4C3_JBot_Far)
        if L1_1 > 60 then
          L1_1 = _util
          L1_1 = L1_1.GetX
          L1_1 = L1_1(_id.M4C3_JBot_Far)
        else
          if not (L1_1 < 97) then
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
          L1_1("M4C3_hit", 0)
          L1_1 = _util
          L1_1 = L1_1.SetVar
          L1_1("M4C3_moveBot", 0)
          L1_1 = _util
          L1_1 = L1_1.MoveObject
          L1_1(_id.M4C3_JBot_Far, 79, 257)
        end
      else
        L1_1 = _util
        L1_1 = L1_1.AddMonologue
        L1_1(2836, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JBot_Far, 345)
      end
    end
  else
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(2837, "DialogStrings", _const.CHANGE_NPC, _id.M4C3_JBot_Far, 345)
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
  function L1_1()
    _util.DisableInput()
    _util.SwitchState("pop", _util.GetSelf())
    repeat
      _util.DisableInput()
      scriptWait()
    until not _util.IsAnimPlaying(_util.GetSelf())
    _util.DelItem(_id.M4C3_Balloon1)
    _util.AddItem(_id.M4C3_Bag1)
    _util.ActivateNpc(_id.M4C3_Bag1, 50)
  end
  if L0_0 == _id.Inventory_PuffleGreen and _util.GetVar("M4C3_hit") == 0 then
    _util.SetVar("M4C3_hit", 1)
    scriptPlay(L1_1)
  end
end
