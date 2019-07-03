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
  L0_0 = L0_0.AddMonologue
  L1_1 = 4147
  L0_0(L1_1)
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
  L1_1 = L1_1.SetVar
  L1_1("FPM08_hit", 0)
  L1_1 = _id
  L1_1 = L1_1.Inventory_PuffleYellow
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.SetSuccess
    L1_1(_util.GetSelf(), true)
  else
    L1_1 = _util
    L1_1 = L1_1.AddMonologue
    L1_1(4148)
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
  L1_1 = L1_1.Inventory_PuffleYellow
  if L0_0 == L1_1 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L1_1 = L1_1("FPM08_hit")
    if L1_1 == 0 then
      function L1_1()
        _util.DisableInput()
        _util.SwitchState("shatter", _id.FPM08_Goal)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.FPM08_Goal)
        _util.SetVar("FPM08_hit", 1)
        _util.IncVar("FPM08_NPCs_Helped")
        _util.DelItem(_id.FPM08_Goalie)
        _util.AddItem(_id.FPM08_GoalieHappy)
        _util.EnableInput()
        _util.AddMonologue(4149, "DialogStrings", _const.CHANGE_NPC, _id.FPM08_GoalieHappy, 4)
        _util.DelItem(_id.FPM08_Goal)
      end
      scriptPlay(L1_1)
    end
  end
end
