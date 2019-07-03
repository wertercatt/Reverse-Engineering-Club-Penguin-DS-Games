local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
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
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.TOUCHED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetVar
  L4_4 = "CreateBridge"
  L3_3 = L3_3(L4_4)
  if L3_3 == 1 then
    L3_3 = _util
    L3_3 = L3_3.ChangeRoom
    L4_4 = 113
    L3_3(L4_4)
  elseif L0_0 == 9 then
    L3_3 = _util
    L3_3 = L3_3.AddPlayerThought
    L4_4 = _text
    L4_4 = L4_4.C3_WILDERNESS_RIVER
    L3_3(L4_4)
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.ITEM_DROPPED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleWhite
  if L3_3 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L5_5 = "C3_WhiteBridgeUsed"
    L4_4 = L4_4(L5_5)
    if L4_4 == 0 then
      L4_4 = _util
      L4_4 = L4_4.SetVar
      L5_5 = "C3_WhiteBridgeUsed"
      L6_6 = 1
      L4_4(L5_5, L6_6)
      L4_4 = _util
      L4_4 = L4_4.SetSuccess
      L5_5 = _util
      L5_5 = L5_5.GetSelf
      L5_5 = L5_5()
      L6_6 = true
      L4_4(L5_5, L6_6)
    end
  end
end
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
L4_4 = _const
L4_4 = L4_4.COLLIDED
if L3_3 == L4_4 then
  L3_3 = _util
  L3_3 = L3_3.GetSource
  L3_3 = L3_3()
  L4_4 = _util
  L4_4 = L4_4.GetSelf
  L4_4 = L4_4()
  L5_5 = 0
  L6_6 = _id
  L6_6 = L6_6.Inventory_PuffleWhite
  if L3_3 == L6_6 then
    function L6_6()
      local L0_7
      L0_7 = 0
      repeat
        scriptWait()
        L0_7 = L0_7 + 1
      until L0_7 > 30
      _UPVALUE0_ = _id.C3_IceBridge
      _util.AddItem(_UPVALUE0_)
      _util.ChangeBaseAnim("MissionObjects/M3/frBridgeAppear", _UPVALUE0_)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_UPVALUE0_)
      _util.ChangeBaseAnim("MissionObjects/M3/frBridge", _UPVALUE0_)
    end
    scriptPlay(L6_6)
    _util.SetVar("CreateBridge", 1)
    _util.AddObjective(_text.C3_OBJ4)
  end
end
