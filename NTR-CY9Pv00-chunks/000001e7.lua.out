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
  L1_1 = L1_1.AddPlayerThought
  L2_2 = _text
  L2_2 = L2_2.C4_MINESHACK_ANVIL
  L1_1(L2_2)
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
    L2_2 = L2_2.SetSuccess
    L2_2(_util.GetSelf(), true)
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
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("GotStatue")
    if L2_2 == 2 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("GotStatue", 3)
      function L2_2()
        _util.DisableInput()
        _util.ChangeBaseAnim("MissionObjects/M4/anvilBubble_float", _id.C4_MineShackFlood_Item_Anvil)
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.C4_MineShackFlood_Item_Anvil)
        _util.DelItem(_id.C4_MineShackFlood_Item_Anvil)
        _util.AddItem(_id.AnvilCrashing)
        _util.PushCamera(_id.AnvilCrashing)
        _util.ChangeBaseAnim("MissionObjects/M4/anvilCrash", _id.AnvilCrashing, "fall")
        _util.ChangeBaseAnim("MissionObjects/M4/statue", _id.C4_MineShackFlood_Item_Statue, "push")
        repeat
          scriptWait()
        until not _util.IsAnimPlaying(_id.C4_MineShackFlood_Item_Statue)
        _util.PopCamera(_id.AnvilCrashing)
        _util.ChangeBaseAnim("MissionObjects/M4/statue2", _id.C4_MineShackFlood_Item_Statue)
        _util.ChangeBaseAnim("MissionObjects/M4/anvilCrashed", _id.AnvilCrashing)
        _util.DelItem(_id.C4_MineShackFlood_Item_Geyser)
        _util.EnableInput()
      end
      scriptPlay(L2_2)
    end
  end
else
end
