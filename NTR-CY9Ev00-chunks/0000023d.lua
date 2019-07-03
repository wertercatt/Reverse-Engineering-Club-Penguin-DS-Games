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
  L2_2 = "M11_WhiteBridgeUsed"
  L1_1 = L1_1(L2_2)
  if L1_1 == 0 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.M11_CORNMAZESECRET_RIVER
    L1_1(L2_2)
  else
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L2_2 = _text
    L2_2 = L2_2.M11_CORNMAZESECRET_RIVEREND
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
  L2_2 = L2_2.Inventory_PuffleWhite
  if L1_1 == L2_2 then
    L2_2 = _util
    L2_2 = L2_2.GetVar
    L2_2 = L2_2("M11_WhiteBridgeUsed")
    if L2_2 == 0 then
      L2_2 = _util
      L2_2 = L2_2.SetVar
      L2_2("M11_WhiteBridgeUsed", 1)
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
  L2_2 = L2_2.Inventory_PuffleWhite
  if L1_1 == L2_2 then
    function L2_2()
      local L0_3
      L0_3 = 0
      repeat
        scriptWait()
        L0_3 = L0_3 + 1
      until L0_3 > 30
      _util.AddItem(_id.M11_SecretBridge)
      _util.ChangeBaseAnim("MissionObjects/M3/frBridgeAppear", _id.M11_SecretBridge)
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.M11_SecretBridge)
      _util.ChangeBaseAnim("MissionObjects/M3/frBridge", _id.M11_SecretBridge)
    end
    scriptPlay(L2_2)
  end
end
