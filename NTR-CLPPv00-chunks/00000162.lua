local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
  L0_0 = _util
  L0_0 = L0_0.AddInterest
  L1_1 = _const
  L1_1 = L1_1.TOUCHED
  L0_0(L1_1)
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
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L2_2 = "numPulleys"
  L1_1 = L1_1(L2_2)
  if L1_1 == 2 then
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "spoolOnCart"
    L1_1 = L1_1(L2_2)
    if L1_1 == 1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L2_2 = 1138
      L1_1(L2_2)
    end
  else
    L1_1 = _util
    L1_1 = L1_1.GetVar
    L2_2 = "numPulleys"
    L1_1 = L1_1(L2_2)
    if L1_1 == 2 then
      L1_1 = _util
      L1_1 = L1_1.GetVar
      L2_2 = "spoolOnCart"
      L1_1 = L1_1(L2_2)
    elseif L1_1 ~= 1 then
      L1_1 = _util
      L1_1 = L1_1.AddMonologue
      L2_2 = 1134
      L1_1(L2_2)
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
  L1_1 = _util
  L1_1 = L1_1.GetSelf
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "numPulleys"
  L2_2 = L2_2(L3_3)
  L3_3 = _id
  L3_3 = L3_3.Inventory_PuffleBlack
  if L0_0 == L3_3 and L2_2 == 2 then
    L3_3 = _util
    L3_3 = L3_3.GetVar
    L4_4 = "spoolOnCart"
    L3_3 = L3_3(L4_4)
    if L3_3 == 1 then
      L3_3 = _util
      L3_3 = L3_3.SetSuccess
      L4_4 = L1_1
      L3_3(L4_4, true)
      L3_3 = _util
      L3_3 = L3_3.SetVar
      L4_4 = "M2C3_hit"
      L3_3(L4_4, 0)
    end
  else
    L3_3 = _id
    L3_3 = L3_3.M2C3_Pulley1
    if L0_0 ~= L3_3 then
      L3_3 = _id
      L3_3 = L3_3.M2C3_Pulley2
    else
      if L0_0 == L3_3 then
        L2_2 = L2_2 + 1
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L4_4 = "numPulleys"
        L3_3(L4_4, L2_2)
        L3_3 = _util
        L3_3 = L3_3.RemoveInventoryItem
        L4_4 = L0_0
        L3_3(L4_4)
        if L2_2 == 1 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L4_4 = 1135
          L3_3(L4_4)
          L3_3 = _util
          L3_3 = L3_3.AddItem
          L4_4 = _id
          L4_4 = L4_4.M2C3_PulleyOnCart1
          L3_3(L4_4)
        elseif L2_2 == 2 then
          L3_3 = _util
          L3_3 = L3_3.AddMonologue
          L4_4 = 1136
          L3_3(L4_4)
          L3_3 = _util
          L3_3 = L3_3.AddItem
          L4_4 = _id
          L4_4 = L4_4.M2C3_PulleyOnCart2
          L3_3(L4_4)
        end
    end
    else
      L3_3 = _id
      L3_3 = L3_3.M2C3_SpoolWheels
      if L0_0 == L3_3 then
        L3_3 = _util
        L3_3 = L3_3.AddMonologue
        L4_4 = 1137
        L3_3(L4_4)
        L3_3 = _util
        L3_3 = L3_3.RemoveInventoryItem
        L4_4 = _id
        L4_4 = L4_4.M2C3_SpoolWheels
        L3_3(L4_4)
        L3_3 = _util
        L3_3 = L3_3.SetVar
        L4_4 = "spoolOnCart"
        L3_3(L4_4, 1)
        L3_3 = _util
        L3_3 = L3_3.AddItem
        L4_4 = _id
        L4_4 = L4_4.M2C3_SpoolOnCart
        L3_3(L4_4)
      end
    end
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
  L1_1 = L1_1.GetSelf
  L1_1 = L1_1()
  L2_2 = _util
  L2_2 = L2_2.GetVar
  L3_3 = "numPulleys"
  L2_2 = L2_2(L3_3)
  L3_3 = 0
  L4_4 = _id
  L4_4 = L4_4.Inventory_PuffleBlack
  if L0_0 == L4_4 then
    L4_4 = _util
    L4_4 = L4_4.GetVar
    L4_4 = L4_4("M2C3_hit")
    if L4_4 == 0 then
      L4_4 = _util
      L4_4 = L4_4.SetVar
      L4_4("M2C3_hit", 1)
      function L4_4()
        _util.DisableInput()
        _util.SetVar("cartWelded", 1)
        repeat
          _UPVALUE0_ = _UPVALUE0_ + 1
          scriptWait()
          if _UPVALUE0_ == 35 then
            _util.PlaySFX(91)
          end
        until _UPVALUE0_ == 130
        _util.DelItem(_id.M2C3_SpoolOnCart)
        _util.DelItem(_id.M2C3_PulleyOnCart1)
        _util.DelItem(_id.M2C3_PulleyOnCart2)
        _util.SetObjective(642)
        _util.AddItem(_id.Inventory_WeldedCart)
        _util.EnableInput()
        _util.DelItem(_UPVALUE1_)
      end
      scriptPlay(L4_4)
    end
  end
end
