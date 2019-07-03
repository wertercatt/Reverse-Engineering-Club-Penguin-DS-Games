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
  L2_2 = "M9_LiftAnvil"
  L1_1 = L1_1(L2_2)
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.ChangeBaseAnim
    L2_2 = "MissionObjects/M4/anvilBubble"
    L1_1(L2_2, _id.M9_Anvil)
  else
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.C4_MINESHACK_ANVIL
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
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L2_2 = L2_2("M9_LiftAnvil")
  if L2_2 == 1 then
    L2_2 = _util
    L2_2 = L2_2.ChangeBaseAnim
    L2_2("MissionObjects/M4/anvilBubble", _id.M9_Anvil)
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PufflePurple
    if L1_1 == L2_2 then
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
      local L0_3
      L0_3 = _util
      L0_3 = L0_3.DisableInput
      L0_3()
      L0_3 = _util
      L0_3 = L0_3.SetVar
      L0_3("M9_LiftAnvil", 1)
      L0_3 = _util
      L0_3 = L0_3.ChangeBaseAnim
      L0_3("MissionObjects/M4/anvilBubble")
      L0_3 = _util
      L0_3 = L0_3.GetY
      L0_3 = L0_3(_util.GetSelf())
      L0_3 = L0_3 - 50
      _util.MoveObject(_util.GetSelf(), _util.GetX(_util.GetSelf()), L0_3, 50, 1)
      repeat
        scriptWait()
      until _util.GetY(_util.GetSelf()) == L0_3
      _util.EnableInput(true)
    end
    scriptPlay(L2_2)
  end
end
