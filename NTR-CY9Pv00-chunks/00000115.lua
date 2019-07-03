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
  L2_2 = L2_2.C3_TM_FAKE_TREE_ALT
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
  L2_2 = L2_2.Inventory_PuffleRed
  if L1_1 ~= L2_2 then
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleBlue
  elseif L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.SetSuccess
    L2_2(_util.GetSelf(), true)
    L2_2 = _util
    L2_2 = L2_2.DisableInput
    L2_2()
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
  L2_2 = L2_2.Inventory_PuffleRed
  if L1_1 == L2_2 then
    function L2_2()
      _util.SetVar("RedBrokeTree", 1)
      _util.ChangeBaseAnim("MissionObjects/M3/fakeTreeSmash", _id.C3_FakeTree)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C3_FakeTree)
      _util.ActivateNpc(_id.C3_TM_Dot, 0)
      _util.EnableInput(true)
      _util.DelItem(_util.GetSelf())
    end
    if _util.GetVar("RedBrokeTree") == 0 then
      scriptPlay(L2_2)
    end
  else
    L2_2 = _id
    L2_2 = L2_2.Inventory_PuffleBlue
    if L1_1 == L2_2 then
      function L2_2()
        _util.DisableInput()
        _util.ChangeBaseAnim("MissionObjects/M3/fakeTreeDown", _id.C3_FakeTree)
        repeat
          scriptWait()
          _util.DisableInput()
        until not _util.IsAnimPlaying(_id.C3_FakeTree)
        _util.EnableInput(true)
        _util.ActivateNpc(_id.C3_TM_Dot, 0)
        _util.DelItem(_util.GetSelf())
      end
      scriptPlay(L2_2)
    end
  end
end
