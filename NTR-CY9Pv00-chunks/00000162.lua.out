local L0_0, L1_1, L2_2
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
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.TOUCHED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "moveHeavyRock"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.C2_HEAVY_ROCK
    L1_1(L2_2)
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.ITEM_DROPPED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PufflePurple
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("moveHeavyRock")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("moveHeavyRock", 1)
      L2_2 = _util
      L2_2 = L2_2.SetSuccess
      L2_2(_util.GetSelf(), true)
    end
  end
end
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
L2_2 = _const
L2_2 = L2_2.COLLIDED
if L1_1 == L2_2 then
  L1_1 = _util
  L1_1 = L1_1.GetSource
  L1_1 = L1_1()
  L2_2 = _id
  L2_2 = L2_2.Inventory_PufflePurple
  if L1_1 == L2_2 then
    function L2_2()
      local L0_3, L1_4
      L0_3 = _util
      L0_3 = L0_3.DisableInput
      L0_3()
      L0_3 = _util
      L0_3 = L0_3.GetY
      L1_4 = _id
      L1_4 = L1_4.C2_HeavyRock
      L0_3 = L0_3(L1_4)
      L0_3 = L0_3 - 80
      L1_4 = 120
      _util.ChangeBaseAnim("MissionObjects/M2/heavyRock_still", _id.C2_HeavyRock)
      _util.MoveObject(_id.C2_HeavyRock, _util.GetX(_id.C2_HeavyRock), _util.GetY(_id.C2_HeavyRock) - 80, L1_4, 1)
      repeat
        scriptWait()
      until L0_3 >= _util.GetY(_id.C2_HeavyRock)
      _util.ChangeBaseAnim("MissionObjects/M2/heavyRock_lift", _id.C2_HeavyRock)
      repeat
        scriptWait()
      until 0 + 1 >= 30
      _util.EnableInput(true)
    end
    scriptPlay(L2_2)
  end
end
